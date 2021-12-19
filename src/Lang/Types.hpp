#pragma once
#include <queue>
#include <string>
#include <unordered_map>
#include <unordered_set>
#include <vector>
#include <compare>

namespace types {

enum class TYPE : int32_t {
  voidT,
  
  charT,
  strT,

  boolT,

  i8T,
  i16T,
  i32T,
  i64T,
  
  u8T,
  u16T,
  u32T,
  u64T,

  f4T,
  f8T, 
  f10T
};

std::unordered_map<std::string, TYPE> prim_types{
  {"void", TYPE::voidT},

  {"char", TYPE::charT},
  {"str",  TYPE::strT},

  {"bool", TYPE::boolT},

  {"i8",  TYPE::i8T},
  {"i16", TYPE::i16T},
  {"i32", TYPE::i32T},
  {"i64", TYPE::i64T},

  {"u8",  TYPE::u8T},
  {"u16", TYPE::u16T},
  {"u32", TYPE::u32T},
  {"u64", TYPE::u64T},

  {"f4",  TYPE::f4T},
  {"f8",  TYPE::f8T},
  {"f10", TYPE::f10T},
  
  {"int", TYPE::i64T},
};

std::unordered_map<TYPE, std::string> type_names{
  {TYPE::voidT, "void"},

  {TYPE::charT, "char"},
  {TYPE::strT, "str"},

  {TYPE::boolT, "bool"},

  {TYPE::i8T,  "i8"},
  {TYPE::i16T, "i16"},
  {TYPE::i32T, "i32"},
  {TYPE::i64T, "i64"},

  {TYPE::u8T,  "u8"},
  {TYPE::u16T, "u16"},
  {TYPE::u32T, "u32"},
  {TYPE::u64T, "u64"},

  {TYPE::f4T,  "f4"},
  {TYPE::f8T,  "f8"},
  {TYPE::f10T, "f10"},
};

std::unordered_map<TYPE, std::string> cpp_type_names{
  {TYPE::voidT, "void"},
  {TYPE::charT, "char"},
  {TYPE::i64T, "i64"},
  {TYPE::i32T, "i32"},
  {TYPE::u64T, "u64"},
  {TYPE::u32T, "u32"},
  {TYPE::strT, "char*"},
};
std::unordered_map<TYPE, size_t> sizes {
  {TYPE::voidT, 0},
  
  {TYPE::charT, 1},
  {TYPE::strT, 8},
  
  {TYPE::boolT, 1},

  {TYPE::i8T,  1},
  {TYPE::i16T, 2},
  {TYPE::i32T, 4},
  {TYPE::i64T, 8},
  
  {TYPE::u8T,  1},
  {TYPE::u16T, 2},
  {TYPE::u32T, 4},
  {TYPE::u64T, 8},
  
  {TYPE::f4T,  4},
  {TYPE::f8T,  8},
  {TYPE::f10T, 10},
};

std::unordered_map<std::string, TYPE> struct_ids;
std::unordered_map<TYPE, std::string> struct_names;

class Type {
 public:
  /* Ctor Dtor */
  Type(const TYPE& type = TYPE::voidT, uint8_t ptr = 0, bool lval = false, bool ref = false) :
    typeid_(type), ptr_(ptr), lval_(lval), ref_(ref) {}
  virtual ~Type() {}

  /* Getters */
  auto getTypeId() const { return typeid_; }
  auto getLval() const { return lval_; }
  auto getRef() const { return ref_; }
  auto getPtr() const { return ptr_; }
  auto getSize() const { return (ptr_ || ref_) ? 8 : sizes[typeid_]; }
  auto getSizeNonRef() const { return (ptr_) ? 8 : sizes[typeid_]; }
  auto getSizeNonPtr() const { return (ptr_ > 1 or ref_) ? 8 : sizes[typeid_]; }

  /* Setters */
  void setLval(bool f) { lval_ = f; }
  void setRef(bool f) { ref_ = f; }
  void setType(TYPE type_) { typeid_ = type_; }
  void setPtr(uint8_t val) { ptr_ = val; }
  void setTmpl(std::vector<Type> val) { tmpl_ = val; }

  /* Bitmask layout: ref<1> lval<1> ptr<8> typeid<other> */
  uint32_t getSelfMask() const {
    return (static_cast<int>(typeid_) << 10) | (ptr_ << 2) | (lval_ << 1) | ref_;
  }
  std::vector<uint32_t> getMask() const { return {getSelfMask()}; }
  const friend auto operator<=>(const Type& lhs, const Type& rhs) {
    return lhs.getSelfMask() <=> rhs.getSelfMask();
  }

  Type rvalClone() { return Type(typeid_, ptr_, false, ref_); }

  std::string toString() const {
    std::string res;
    if (static_cast<int>(typeid_) < 50)
      res += type_names[typeid_];
    else 
      res += struct_names[typeid_];

    res += std::string(ptr_, 'P');
    if (ref_) res += "R";

    if (tmpl_.size()) {
      res += "<";
      bool f = false;
      for (const auto& i : tmpl_) {
        if (f) res += " ";
        else f = true;
        res += i.toString(); 
      }
      res += ">";
    }
    if (lval_) res += "&";
    return res;
  }

 private:
  TYPE typeid_ = TYPE::voidT;
  bool lval_ = false;
  bool ref_ = false;
  uint8_t ptr_ = 0;
  std::vector<Type> tmpl_;
};

std::string genericToStr(const std::vector<Type>& generic) {
  std::string res;
  if (generic.size()) {
    res += "<";
    bool f = false;
    for (const auto& i : generic) {
      if (f)
        res += " ";
      else
        f = true;
      res += i.toString();
    }
    res += ">";
  }
  return res;
}

typedef std::pair<std::string, std::vector<types::Type>> funcHead;

struct StructInfo {
  std::unordered_map<std::string, Type> members;
  std::vector<std::string> members_list;
};

std::unordered_map<TYPE, StructInfo> structs;

const int first_struct_id = 50;
int last_struct_id = 50;

void pushStruct(std::string name, const StructInfo& info) {
  const auto id = static_cast<TYPE>(last_struct_id);
  struct_ids[name] = id;
  struct_names[id] = name;
  structs[id] = info;
  ++last_struct_id;

  int size = 0;
  for (const auto& [_, type] : info.members)
    size += type.getSize();
  sizes[static_cast<TYPE>(id)] = size;
}

TYPE getStructId(const std::string& str) {
  if (struct_ids.count(str)) {
    return struct_ids[str];
  }
  return static_cast<TYPE>(-1);
}

};  // namespace types
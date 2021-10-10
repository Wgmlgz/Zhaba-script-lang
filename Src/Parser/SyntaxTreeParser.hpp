#pragma once
#include "../Lang/Lang.hpp"
#include "../TreeLib/Tree.hpp"
#include "DefinitionsParser.hpp"

STBlock* parseASTblock(ast::ASTBlock* main_block, ScopeInfo cur_scope, ScopeInfo& parent_scope, types::Type retT) {
  auto res = new STBlock;
  
  for (auto i = main_block->nodes.begin(); i != main_block->nodes.end(); ++i) {
    if (auto line = dynamic_cast<ast::ASTLine*>(*i)) {
      /* decide if current line is line declaration or something */
      bool is_var_decl = true;
      bool autoT = line->begin->val == "auto";
      types::Type type;
      try {
        if (!autoT) type = types::parse(line->begin);
        else ++line->begin;
      }  catch (...) { 
        is_var_decl = false;
      }
      if (is_var_decl) {
        /* if line is variable declaration */
        auto exp_res = zhexp::preprocess(line->begin, line->end);
        auto exp = zhexp::buildExp(exp_res.begin(), exp_res.end());
        auto tuple = castTreeToTuple(exp);

        for (auto i : tuple->content) {
          if (auto id = dynamic_cast<zhexp::IdLiteral*>(i)) {
            /* just plane variable */
            if (autoT) throw ParserError(i->pos, "Cannot decide type for '" + id->val + "'");
            res->scope_info.vars[id->val] = type;
            res->scope_info.vars[id->val].setLval(true);

            cur_scope.vars[id->val] = type;
            cur_scope.vars[id->val].setLval(true);
          } else {
            /* variable with assignment */ 
            if (auto assign = dynamic_cast<zhexp::BinOperator*>(i)) {
              if (assign->val != "=")
                throw ParserError(i->pos, "Expected assignment, but '" + assign->val + "' found");
              if (auto id = dynamic_cast<zhexp::IdLiteral*>(assign->lhs)) {
                zhexp::postprocess(assign->rhs, cur_scope);
                /* push variable */
                if (autoT) {
                  res->scope_info.vars[id->val] = assign->rhs->type;
                  cur_scope.vars[id->val] = assign->rhs->type;
                } else {
                  res->scope_info.vars[id->val] = type;
                  cur_scope.vars[id->val] = type;
                }
                res->scope_info.vars[id->val].setLval(true);
                cur_scope.vars[id->val].setLval(true);

                /* push assignment expression */
                assign->lhs = zhexp::postprocess(assign->lhs, cur_scope);
                auto tmp = new STExp;
                tmp->exp = assign;
                res->nodes.push_back(tmp);
              } else {
                throw ParserError(i->pos, "Expected variable name");
              }
            }
          }
        }
      } else { 
        /* not variable declaration so normal parsing */
        auto exp = zhexp::parse(line->begin, line->end, cur_scope);
        if (auto ctr = dynamic_cast<zhexp::FlowOperator*>(exp)) {
          /* "?" (if) statement parsing */
          if (ctr->val == "?") {
            if (ctr->operand->type.getTypeId() == types::TYPE::intT) {
              auto tmp_if = new STIf;
              tmp_if->contition = ctr->operand;
              if (i + 1 != main_block->nodes.end()) {
                if (auto body = dynamic_cast<ast::ASTBlock*>(*(i + 1))) {
                  tmp_if->body = parseASTblock(body, cur_scope, res->scope_info, retT);
                  ++i;
                  while (i + 1 != main_block->nodes.end()) {
                    if (auto elseif_body = dynamic_cast<ast::ASTBlock*>(*(i + 1))) {
                      if (elseif_body->btype != ast::ASTBlock::nextB) break;
                      if (elseif_body->nodes.size() == 2) {
                        if (auto line = dynamic_cast<ast::ASTLine*>(elseif_body->nodes[0])) {
                          auto exp =
                            zhexp::parse(line->begin, line->end, cur_scope);
                          if (auto block = dynamic_cast<ast::ASTBlock*>(elseif_body->nodes[1])) {
                            tmp_if->elseif_body.emplace_back(
                              exp, parseASTblock(block, cur_scope, res->scope_info, retT));
                          } else throw ParserError(0, "Exprected block in '|(else if)' statement");
                        } else throw ParserError(0, "Expected expression in '|(else if)' statement");
                      } else {
                        throw ParserError(0, "Expected condition and block in '|(else if)' statement");
                      }
                      ++i;
                    } else break;
                  }
                  if (i + 1 != main_block->nodes.end()) {
                    if (auto else_body = dynamic_cast<ast::ASTBlock*>(*(i + 1))) {
                      tmp_if->else_body =
                        parseASTblock(else_body, cur_scope, res->scope_info, retT);
                      ++i;
                    }
                  }
                  res->nodes.push_back(tmp_if);
                } else {
                  throw ParserError(0, "Expected block after '?(if)' statement");
                }
              }
            } else {
              throw ParserError(ctr->pos, "Expected int expression in '?(if)' contition");
            }
          }
          /* "@" (for) statement parsing */
          else if (ctr->val == "@") {
            auto tuple = castToTuple(ctr->operand);

            if (tuple->content.size() < 1) {
              throw ParserError(0, "Empty '@(while)' statement");
            }

            if (tuple->content.size() > 3) {
              throw ParserError(ctr->pos,
                "You can privide max 3 expressions (init condition iteration) '@(for)' in statement");
            }

            /* for (;condition;) */
            if (tuple->content.size() == 1) {
              tuple->content.insert(tuple->content.begin(), nullptr);
              tuple->content.insert(tuple->content.end(), nullptr);
            }
            /* for (init; condition;) */
            else if (tuple->content.size() == 2) {
              tuple->content.insert(tuple->content.end(), nullptr);
            }

            if (tuple->content[1]->type.getTypeId() == types::TYPE::intT) {
              if (tuple->content[0]) {
                auto init = new STExp;
                init->exp = tuple->content[0];
                res->nodes.push_back(init);
              }
              auto tmp_while = new STWhile;
              tmp_while->contition = tuple->content[1];
              if (i + 1 != main_block->nodes.end()) {
                if (auto body = dynamic_cast<ast::ASTBlock*>(*(i + 1))) {
                  tmp_while->body = parseASTblock(body, cur_scope, res->scope_info, retT);
                  if (tuple->content[2]) {
                    auto iter = new STExp;
                    iter->exp = tuple->content[2];
                    tmp_while->body->nodes.push_back(iter);
                  }
                  res->nodes.push_back(tmp_while);
                  ++i;
                } else {
                  throw ParserError(0, "Expected block after '@(for)' statement");
                }
              }
            } else {
              throw ParserError(ctr->pos,
                "Expected int expression in '@(for)' contition, but '" +
                tuple->content[1]->type.toString() + "' found");
            }
          }
          /* <(return) statement parsing */
          else if (ctr->val == "<") {
            auto tmp_ret = new STRet;
            tmp_ret->exp = ctr->operand;
            if (retT.getTypeId() == types::TYPE::voidT) {
              if (tmp_ret->exp)
                throw ParserError(ctr->pos, "You cannot return something becouse return type is 'void'");
            } else {
              if (!tmp_ret->exp)
                throw ParserError(ctr->pos, "Expected return value");
              if (tmp_ret->exp->type.getTypeId() != retT.getTypeId())
                throw ParserError(ctr->pos,
                  "Return type must be '" + retT.toString() + "', but '" +
                  tmp_ret->exp->type.toString() + "' found");
            }
            res->nodes.push_back(tmp_ret);
          } else {
            throw ParserError(0, "Random error lol (unknown flow control operator)");
          }
        } else {
          /* just normal expression */
          auto tmp = new STExp;
          tmp->exp = exp;
          res->nodes.push_back(tmp);
        }
      }
    } else if (auto block = dynamic_cast<ast::ASTBlock*>(*i)) {
      throw ParserError(0, "Unexprected block");
    } else {
      throw ParserError(0, "Random error lol (cannot cast ast node)");
    }
  }
  return res;
}

STTree* parseAST(ast::ASTBlock* main_block) {
  STTree* res = new STTree;
  auto cur = main_block->nodes.begin();
  ScopeInfo main_scope;
  while (cur != main_block->nodes.end()) {
    if (auto line = dynamic_cast<ast::ASTLine*>(*cur)) {
      if (line->begin->val == "type") {
        /* struct declaration */
        if (line->end - line->begin != 3)
          throw ParserError(line->end->pos, "Expected type name and nothing else");
        if ((line->begin + 1)->token != "space" or (line->begin + 2)->token != "id")
          throw ParserError(line->end->pos, "Expected identifier token for struct type name");

        std::string name = (line->begin + 2)->val;
        if (types::getStructId(name) != -1) {
          throw ParserError(line->begin->pos, line->end->pos + line->end->val.size() - line->begin->pos,
            "Type '" + name + "'already exist");
        }
        ++cur;

        /* parse struct body */
        types::StructInfo struct_info;
        if (cur == main_block->nodes.end())
          throw ParserError(line->end->pos, "Expected type body");
        if (auto block = dynamic_cast<ast::ASTBlock*>(*cur)) {
          for (auto node : block->nodes) {
            if (auto line = dynamic_cast<ast::ASTLine*>(node)) {
              /** Members line parsing */
              if (line->end - line->begin < 2) {
                throw ParserError(line->begin->pos, line->end->pos + line->end->val.size() - line->begin->pos,
                  "Expected memeber type with names like 'int a b c'");
              }

              types::Type cur_type;
              auto cur = line->begin;
              try {
                cur_type = types::parse(cur);
              } catch (...) {
                throw ParserError(line->begin->pos, line->begin->val.size(), "Expected valid type");
              }
              cur_type.setLval(true);

              for (auto i = cur; i != line->end; ++i) {
                if (i->token == "space") {
                  continue;
                }

                /** TODO: proper member name validation */
                if (i->token != "id") {
                  throw ParserError(i->pos, i->val.size(), "Expected member name as identifier");
                }
                if (struct_info.members.count(i->val)) {
                  throw ParserError(i->pos, i->val.size(), "Member '" + i->val + "'already exist");
                }
                struct_info.members[i->val] = cur_type;
              }
            } else {
              throw ParserError(0, "Unexprected block");
            }
          }
          /** Push declarated struct */
          types::pushStruct(name, struct_info);
        } else {
          throw ParserError(line->end->pos, "Expected type body");
        }
        ++cur;
      } else {
        /** Parse function header */
        res->functions.push_back(parseFunctionHeader(line->begin, line->end));
        auto& func = res->functions.back();
        zhexp::operators.insert(func->name);
        std::vector<types::Type> types;
        for (auto& [_, type] : func->args) {
          types.push_back(type);
        }
          if (func->op_type == OpType::bin) {
          zhexp::B_OD[{func->name, types[0], types[1]}] = func->type;
          zhexp::bin_operators[func->name] = func->priority;
        } else if (func->op_type == OpType::lhs) {
          zhexp::PR_OD[{func->name, types}] = func->type;
          zhexp::prefix_operators[func->name] = func->priority;
        } else if (func->op_type == OpType::rhs) {
          zhexp::PO_OD[{func->name, types}] = func->type;
          zhexp::postfix_operators[func->name] = func->priority;
        }
        ++cur;
        ScopeInfo scope;
        for (auto& [name, type] : func->args) {
          scope.vars[name] = type;
          scope.vars[name].setLval(true);
        }
        /** And then parse body */
        if (cur == main_block->nodes.end())
          throw ParserError(line->end->pos, "Expected function body");
        if (auto block = dynamic_cast<ast::ASTBlock*>(*cur)) {
          res->functions.back()->body = parseASTblock(block, scope, main_scope, func->type);
        } else {
          throw ParserError(line->end->pos, "Expected function body");
        }
        ++cur;
      }
    } else {
      throw ParserError(0, "Random error lol (cannot cast ast node)");
    }
  }
  return res;
}
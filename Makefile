# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.21

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2021.3.2\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2021.3.2\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Code\Zhaba-script-lang

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Code\Zhaba-script-lang

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "No interactive CMake dialog available..."
	"C:\Program Files\JetBrains\CLion 2021.3.2\bin\cmake\win\bin\cmake.exe" -E echo "No interactive CMake dialog available."
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	"C:\Program Files\JetBrains\CLion 2021.3.2\bin\cmake\win\bin\cmake.exe" --regenerate-during-build -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start C:\Code\Zhaba-script-lang\CMakeFiles C:\Code\Zhaba-script-lang\\CMakeFiles\progress.marks
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start C:\Code\Zhaba-script-lang\CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles\Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named Zhaba_script_lang

# Build rule for target.
Zhaba_script_lang: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Makefile2 Zhaba_script_lang
.PHONY : Zhaba_script_lang

# fast build rule for target.
Zhaba_script_lang/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Zhaba_script_lang.dir\build.make CMakeFiles/Zhaba_script_lang.dir/build
.PHONY : Zhaba_script_lang/fast

src/interpreter/bytecode.obj: src/interpreter/bytecode.cpp.obj
.PHONY : src/interpreter/bytecode.obj

# target to build an object file
src/interpreter/bytecode.cpp.obj:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Zhaba_script_lang.dir\build.make CMakeFiles/Zhaba_script_lang.dir/src/interpreter/bytecode.cpp.obj
.PHONY : src/interpreter/bytecode.cpp.obj

src/interpreter/bytecode.i: src/interpreter/bytecode.cpp.i
.PHONY : src/interpreter/bytecode.i

# target to preprocess a source file
src/interpreter/bytecode.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Zhaba_script_lang.dir\build.make CMakeFiles/Zhaba_script_lang.dir/src/interpreter/bytecode.cpp.i
.PHONY : src/interpreter/bytecode.cpp.i

src/interpreter/bytecode.s: src/interpreter/bytecode.cpp.s
.PHONY : src/interpreter/bytecode.s

# target to generate assembly for a file
src/interpreter/bytecode.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Zhaba_script_lang.dir\build.make CMakeFiles/Zhaba_script_lang.dir/src/interpreter/bytecode.cpp.s
.PHONY : src/interpreter/bytecode.cpp.s

src/interpreter/heap.obj: src/interpreter/heap.cpp.obj
.PHONY : src/interpreter/heap.obj

# target to build an object file
src/interpreter/heap.cpp.obj:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Zhaba_script_lang.dir\build.make CMakeFiles/Zhaba_script_lang.dir/src/interpreter/heap.cpp.obj
.PHONY : src/interpreter/heap.cpp.obj

src/interpreter/heap.i: src/interpreter/heap.cpp.i
.PHONY : src/interpreter/heap.i

# target to preprocess a source file
src/interpreter/heap.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Zhaba_script_lang.dir\build.make CMakeFiles/Zhaba_script_lang.dir/src/interpreter/heap.cpp.i
.PHONY : src/interpreter/heap.cpp.i

src/interpreter/heap.s: src/interpreter/heap.cpp.s
.PHONY : src/interpreter/heap.s

# target to generate assembly for a file
src/interpreter/heap.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Zhaba_script_lang.dir\build.make CMakeFiles/Zhaba_script_lang.dir/src/interpreter/heap.cpp.s
.PHONY : src/interpreter/heap.cpp.s

src/interpreter/runtime_error.obj: src/interpreter/runtime_error.cpp.obj
.PHONY : src/interpreter/runtime_error.obj

# target to build an object file
src/interpreter/runtime_error.cpp.obj:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Zhaba_script_lang.dir\build.make CMakeFiles/Zhaba_script_lang.dir/src/interpreter/runtime_error.cpp.obj
.PHONY : src/interpreter/runtime_error.cpp.obj

src/interpreter/runtime_error.i: src/interpreter/runtime_error.cpp.i
.PHONY : src/interpreter/runtime_error.i

# target to preprocess a source file
src/interpreter/runtime_error.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Zhaba_script_lang.dir\build.make CMakeFiles/Zhaba_script_lang.dir/src/interpreter/runtime_error.cpp.i
.PHONY : src/interpreter/runtime_error.cpp.i

src/interpreter/runtime_error.s: src/interpreter/runtime_error.cpp.s
.PHONY : src/interpreter/runtime_error.s

# target to generate assembly for a file
src/interpreter/runtime_error.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Zhaba_script_lang.dir\build.make CMakeFiles/Zhaba_script_lang.dir/src/interpreter/runtime_error.cpp.s
.PHONY : src/interpreter/runtime_error.cpp.s

src/interpreter/stack.obj: src/interpreter/stack.cpp.obj
.PHONY : src/interpreter/stack.obj

# target to build an object file
src/interpreter/stack.cpp.obj:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Zhaba_script_lang.dir\build.make CMakeFiles/Zhaba_script_lang.dir/src/interpreter/stack.cpp.obj
.PHONY : src/interpreter/stack.cpp.obj

src/interpreter/stack.i: src/interpreter/stack.cpp.i
.PHONY : src/interpreter/stack.i

# target to preprocess a source file
src/interpreter/stack.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Zhaba_script_lang.dir\build.make CMakeFiles/Zhaba_script_lang.dir/src/interpreter/stack.cpp.i
.PHONY : src/interpreter/stack.cpp.i

src/interpreter/stack.s: src/interpreter/stack.cpp.s
.PHONY : src/interpreter/stack.s

# target to generate assembly for a file
src/interpreter/stack.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Zhaba_script_lang.dir\build.make CMakeFiles/Zhaba_script_lang.dir/src/interpreter/stack.cpp.s
.PHONY : src/interpreter/stack.cpp.s

src/interpreter/to_bytecode.obj: src/interpreter/to_bytecode.cpp.obj
.PHONY : src/interpreter/to_bytecode.obj

# target to build an object file
src/interpreter/to_bytecode.cpp.obj:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Zhaba_script_lang.dir\build.make CMakeFiles/Zhaba_script_lang.dir/src/interpreter/to_bytecode.cpp.obj
.PHONY : src/interpreter/to_bytecode.cpp.obj

src/interpreter/to_bytecode.i: src/interpreter/to_bytecode.cpp.i
.PHONY : src/interpreter/to_bytecode.i

# target to preprocess a source file
src/interpreter/to_bytecode.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Zhaba_script_lang.dir\build.make CMakeFiles/Zhaba_script_lang.dir/src/interpreter/to_bytecode.cpp.i
.PHONY : src/interpreter/to_bytecode.cpp.i

src/interpreter/to_bytecode.s: src/interpreter/to_bytecode.cpp.s
.PHONY : src/interpreter/to_bytecode.s

# target to generate assembly for a file
src/interpreter/to_bytecode.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Zhaba_script_lang.dir\build.make CMakeFiles/Zhaba_script_lang.dir/src/interpreter/to_bytecode.cpp.s
.PHONY : src/interpreter/to_bytecode.cpp.s

src/lang/ast.obj: src/lang/ast.cpp.obj
.PHONY : src/lang/ast.obj

# target to build an object file
src/lang/ast.cpp.obj:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Zhaba_script_lang.dir\build.make CMakeFiles/Zhaba_script_lang.dir/src/lang/ast.cpp.obj
.PHONY : src/lang/ast.cpp.obj

src/lang/ast.i: src/lang/ast.cpp.i
.PHONY : src/lang/ast.i

# target to preprocess a source file
src/lang/ast.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Zhaba_script_lang.dir\build.make CMakeFiles/Zhaba_script_lang.dir/src/lang/ast.cpp.i
.PHONY : src/lang/ast.cpp.i

src/lang/ast.s: src/lang/ast.cpp.s
.PHONY : src/lang/ast.s

# target to generate assembly for a file
src/lang/ast.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Zhaba_script_lang.dir\build.make CMakeFiles/Zhaba_script_lang.dir/src/lang/ast.cpp.s
.PHONY : src/lang/ast.cpp.s

src/lang/expression.obj: src/lang/expression.cpp.obj
.PHONY : src/lang/expression.obj

# target to build an object file
src/lang/expression.cpp.obj:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Zhaba_script_lang.dir\build.make CMakeFiles/Zhaba_script_lang.dir/src/lang/expression.cpp.obj
.PHONY : src/lang/expression.cpp.obj

src/lang/expression.i: src/lang/expression.cpp.i
.PHONY : src/lang/expression.i

# target to preprocess a source file
src/lang/expression.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Zhaba_script_lang.dir\build.make CMakeFiles/Zhaba_script_lang.dir/src/lang/expression.cpp.i
.PHONY : src/lang/expression.cpp.i

src/lang/expression.s: src/lang/expression.cpp.s
.PHONY : src/lang/expression.s

# target to generate assembly for a file
src/lang/expression.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Zhaba_script_lang.dir\build.make CMakeFiles/Zhaba_script_lang.dir/src/lang/expression.cpp.s
.PHONY : src/lang/expression.cpp.s

src/lang/generics.obj: src/lang/generics.cpp.obj
.PHONY : src/lang/generics.obj

# target to build an object file
src/lang/generics.cpp.obj:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Zhaba_script_lang.dir\build.make CMakeFiles/Zhaba_script_lang.dir/src/lang/generics.cpp.obj
.PHONY : src/lang/generics.cpp.obj

src/lang/generics.i: src/lang/generics.cpp.i
.PHONY : src/lang/generics.i

# target to preprocess a source file
src/lang/generics.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Zhaba_script_lang.dir\build.make CMakeFiles/Zhaba_script_lang.dir/src/lang/generics.cpp.i
.PHONY : src/lang/generics.cpp.i

src/lang/generics.s: src/lang/generics.cpp.s
.PHONY : src/lang/generics.s

# target to generate assembly for a file
src/lang/generics.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Zhaba_script_lang.dir\build.make CMakeFiles/Zhaba_script_lang.dir/src/lang/generics.cpp.s
.PHONY : src/lang/generics.cpp.s

src/lang/lang_tables.obj: src/lang/lang_tables.cpp.obj
.PHONY : src/lang/lang_tables.obj

# target to build an object file
src/lang/lang_tables.cpp.obj:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Zhaba_script_lang.dir\build.make CMakeFiles/Zhaba_script_lang.dir/src/lang/lang_tables.cpp.obj
.PHONY : src/lang/lang_tables.cpp.obj

src/lang/lang_tables.i: src/lang/lang_tables.cpp.i
.PHONY : src/lang/lang_tables.i

# target to preprocess a source file
src/lang/lang_tables.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Zhaba_script_lang.dir\build.make CMakeFiles/Zhaba_script_lang.dir/src/lang/lang_tables.cpp.i
.PHONY : src/lang/lang_tables.cpp.i

src/lang/lang_tables.s: src/lang/lang_tables.cpp.s
.PHONY : src/lang/lang_tables.s

# target to generate assembly for a file
src/lang/lang_tables.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Zhaba_script_lang.dir\build.make CMakeFiles/Zhaba_script_lang.dir/src/lang/lang_tables.cpp.s
.PHONY : src/lang/lang_tables.cpp.s

src/lang/syntax_tree.obj: src/lang/syntax_tree.cpp.obj
.PHONY : src/lang/syntax_tree.obj

# target to build an object file
src/lang/syntax_tree.cpp.obj:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Zhaba_script_lang.dir\build.make CMakeFiles/Zhaba_script_lang.dir/src/lang/syntax_tree.cpp.obj
.PHONY : src/lang/syntax_tree.cpp.obj

src/lang/syntax_tree.i: src/lang/syntax_tree.cpp.i
.PHONY : src/lang/syntax_tree.i

# target to preprocess a source file
src/lang/syntax_tree.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Zhaba_script_lang.dir\build.make CMakeFiles/Zhaba_script_lang.dir/src/lang/syntax_tree.cpp.i
.PHONY : src/lang/syntax_tree.cpp.i

src/lang/syntax_tree.s: src/lang/syntax_tree.cpp.s
.PHONY : src/lang/syntax_tree.s

# target to generate assembly for a file
src/lang/syntax_tree.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Zhaba_script_lang.dir\build.make CMakeFiles/Zhaba_script_lang.dir/src/lang/syntax_tree.cpp.s
.PHONY : src/lang/syntax_tree.cpp.s

src/lang/token.obj: src/lang/token.cpp.obj
.PHONY : src/lang/token.obj

# target to build an object file
src/lang/token.cpp.obj:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Zhaba_script_lang.dir\build.make CMakeFiles/Zhaba_script_lang.dir/src/lang/token.cpp.obj
.PHONY : src/lang/token.cpp.obj

src/lang/token.i: src/lang/token.cpp.i
.PHONY : src/lang/token.i

# target to preprocess a source file
src/lang/token.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Zhaba_script_lang.dir\build.make CMakeFiles/Zhaba_script_lang.dir/src/lang/token.cpp.i
.PHONY : src/lang/token.cpp.i

src/lang/token.s: src/lang/token.cpp.s
.PHONY : src/lang/token.s

# target to generate assembly for a file
src/lang/token.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Zhaba_script_lang.dir\build.make CMakeFiles/Zhaba_script_lang.dir/src/lang/token.cpp.s
.PHONY : src/lang/token.cpp.s

src/lang/types.obj: src/lang/types.cpp.obj
.PHONY : src/lang/types.obj

# target to build an object file
src/lang/types.cpp.obj:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Zhaba_script_lang.dir\build.make CMakeFiles/Zhaba_script_lang.dir/src/lang/types.cpp.obj
.PHONY : src/lang/types.cpp.obj

src/lang/types.i: src/lang/types.cpp.i
.PHONY : src/lang/types.i

# target to preprocess a source file
src/lang/types.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Zhaba_script_lang.dir\build.make CMakeFiles/Zhaba_script_lang.dir/src/lang/types.cpp.i
.PHONY : src/lang/types.cpp.i

src/lang/types.s: src/lang/types.cpp.s
.PHONY : src/lang/types.s

# target to generate assembly for a file
src/lang/types.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Zhaba_script_lang.dir\build.make CMakeFiles/Zhaba_script_lang.dir/src/lang/types.cpp.s
.PHONY : src/lang/types.cpp.s

src/lang/zhdata.obj: src/lang/zhdata.cpp.obj
.PHONY : src/lang/zhdata.obj

# target to build an object file
src/lang/zhdata.cpp.obj:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Zhaba_script_lang.dir\build.make CMakeFiles/Zhaba_script_lang.dir/src/lang/zhdata.cpp.obj
.PHONY : src/lang/zhdata.cpp.obj

src/lang/zhdata.i: src/lang/zhdata.cpp.i
.PHONY : src/lang/zhdata.i

# target to preprocess a source file
src/lang/zhdata.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Zhaba_script_lang.dir\build.make CMakeFiles/Zhaba_script_lang.dir/src/lang/zhdata.cpp.i
.PHONY : src/lang/zhdata.cpp.i

src/lang/zhdata.s: src/lang/zhdata.cpp.s
.PHONY : src/lang/zhdata.s

# target to generate assembly for a file
src/lang/zhdata.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Zhaba_script_lang.dir\build.make CMakeFiles/Zhaba_script_lang.dir/src/lang/zhdata.cpp.s
.PHONY : src/lang/zhdata.cpp.s

src/parser/ast_parser.obj: src/parser/ast_parser.cpp.obj
.PHONY : src/parser/ast_parser.obj

# target to build an object file
src/parser/ast_parser.cpp.obj:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Zhaba_script_lang.dir\build.make CMakeFiles/Zhaba_script_lang.dir/src/parser/ast_parser.cpp.obj
.PHONY : src/parser/ast_parser.cpp.obj

src/parser/ast_parser.i: src/parser/ast_parser.cpp.i
.PHONY : src/parser/ast_parser.i

# target to preprocess a source file
src/parser/ast_parser.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Zhaba_script_lang.dir\build.make CMakeFiles/Zhaba_script_lang.dir/src/parser/ast_parser.cpp.i
.PHONY : src/parser/ast_parser.cpp.i

src/parser/ast_parser.s: src/parser/ast_parser.cpp.s
.PHONY : src/parser/ast_parser.s

# target to generate assembly for a file
src/parser/ast_parser.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Zhaba_script_lang.dir\build.make CMakeFiles/Zhaba_script_lang.dir/src/parser/ast_parser.cpp.s
.PHONY : src/parser/ast_parser.cpp.s

src/parser/definitions_parser.obj: src/parser/definitions_parser.cpp.obj
.PHONY : src/parser/definitions_parser.obj

# target to build an object file
src/parser/definitions_parser.cpp.obj:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Zhaba_script_lang.dir\build.make CMakeFiles/Zhaba_script_lang.dir/src/parser/definitions_parser.cpp.obj
.PHONY : src/parser/definitions_parser.cpp.obj

src/parser/definitions_parser.i: src/parser/definitions_parser.cpp.i
.PHONY : src/parser/definitions_parser.i

# target to preprocess a source file
src/parser/definitions_parser.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Zhaba_script_lang.dir\build.make CMakeFiles/Zhaba_script_lang.dir/src/parser/definitions_parser.cpp.i
.PHONY : src/parser/definitions_parser.cpp.i

src/parser/definitions_parser.s: src/parser/definitions_parser.cpp.s
.PHONY : src/parser/definitions_parser.s

# target to generate assembly for a file
src/parser/definitions_parser.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Zhaba_script_lang.dir\build.make CMakeFiles/Zhaba_script_lang.dir/src/parser/definitions_parser.cpp.s
.PHONY : src/parser/definitions_parser.cpp.s

src/parser/expression_parser.obj: src/parser/expression_parser.cpp.obj
.PHONY : src/parser/expression_parser.obj

# target to build an object file
src/parser/expression_parser.cpp.obj:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Zhaba_script_lang.dir\build.make CMakeFiles/Zhaba_script_lang.dir/src/parser/expression_parser.cpp.obj
.PHONY : src/parser/expression_parser.cpp.obj

src/parser/expression_parser.i: src/parser/expression_parser.cpp.i
.PHONY : src/parser/expression_parser.i

# target to preprocess a source file
src/parser/expression_parser.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Zhaba_script_lang.dir\build.make CMakeFiles/Zhaba_script_lang.dir/src/parser/expression_parser.cpp.i
.PHONY : src/parser/expression_parser.cpp.i

src/parser/expression_parser.s: src/parser/expression_parser.cpp.s
.PHONY : src/parser/expression_parser.s

# target to generate assembly for a file
src/parser/expression_parser.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Zhaba_script_lang.dir\build.make CMakeFiles/Zhaba_script_lang.dir/src/parser/expression_parser.cpp.s
.PHONY : src/parser/expression_parser.cpp.s

src/parser/lexer.obj: src/parser/lexer.cpp.obj
.PHONY : src/parser/lexer.obj

# target to build an object file
src/parser/lexer.cpp.obj:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Zhaba_script_lang.dir\build.make CMakeFiles/Zhaba_script_lang.dir/src/parser/lexer.cpp.obj
.PHONY : src/parser/lexer.cpp.obj

src/parser/lexer.i: src/parser/lexer.cpp.i
.PHONY : src/parser/lexer.i

# target to preprocess a source file
src/parser/lexer.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Zhaba_script_lang.dir\build.make CMakeFiles/Zhaba_script_lang.dir/src/parser/lexer.cpp.i
.PHONY : src/parser/lexer.cpp.i

src/parser/lexer.s: src/parser/lexer.cpp.s
.PHONY : src/parser/lexer.s

# target to generate assembly for a file
src/parser/lexer.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Zhaba_script_lang.dir\build.make CMakeFiles/Zhaba_script_lang.dir/src/parser/lexer.cpp.s
.PHONY : src/parser/lexer.cpp.s

src/parser/parser_error.obj: src/parser/parser_error.cpp.obj
.PHONY : src/parser/parser_error.obj

# target to build an object file
src/parser/parser_error.cpp.obj:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Zhaba_script_lang.dir\build.make CMakeFiles/Zhaba_script_lang.dir/src/parser/parser_error.cpp.obj
.PHONY : src/parser/parser_error.cpp.obj

src/parser/parser_error.i: src/parser/parser_error.cpp.i
.PHONY : src/parser/parser_error.i

# target to preprocess a source file
src/parser/parser_error.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Zhaba_script_lang.dir\build.make CMakeFiles/Zhaba_script_lang.dir/src/parser/parser_error.cpp.i
.PHONY : src/parser/parser_error.cpp.i

src/parser/parser_error.s: src/parser/parser_error.cpp.s
.PHONY : src/parser/parser_error.s

# target to generate assembly for a file
src/parser/parser_error.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Zhaba_script_lang.dir\build.make CMakeFiles/Zhaba_script_lang.dir/src/parser/parser_error.cpp.s
.PHONY : src/parser/parser_error.cpp.s

src/parser/preprocess.obj: src/parser/preprocess.cpp.obj
.PHONY : src/parser/preprocess.obj

# target to build an object file
src/parser/preprocess.cpp.obj:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Zhaba_script_lang.dir\build.make CMakeFiles/Zhaba_script_lang.dir/src/parser/preprocess.cpp.obj
.PHONY : src/parser/preprocess.cpp.obj

src/parser/preprocess.i: src/parser/preprocess.cpp.i
.PHONY : src/parser/preprocess.i

# target to preprocess a source file
src/parser/preprocess.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Zhaba_script_lang.dir\build.make CMakeFiles/Zhaba_script_lang.dir/src/parser/preprocess.cpp.i
.PHONY : src/parser/preprocess.cpp.i

src/parser/preprocess.s: src/parser/preprocess.cpp.s
.PHONY : src/parser/preprocess.s

# target to generate assembly for a file
src/parser/preprocess.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Zhaba_script_lang.dir\build.make CMakeFiles/Zhaba_script_lang.dir/src/parser/preprocess.cpp.s
.PHONY : src/parser/preprocess.cpp.s

src/parser/syntax_tree_parser.obj: src/parser/syntax_tree_parser.cpp.obj
.PHONY : src/parser/syntax_tree_parser.obj

# target to build an object file
src/parser/syntax_tree_parser.cpp.obj:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Zhaba_script_lang.dir\build.make CMakeFiles/Zhaba_script_lang.dir/src/parser/syntax_tree_parser.cpp.obj
.PHONY : src/parser/syntax_tree_parser.cpp.obj

src/parser/syntax_tree_parser.i: src/parser/syntax_tree_parser.cpp.i
.PHONY : src/parser/syntax_tree_parser.i

# target to preprocess a source file
src/parser/syntax_tree_parser.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Zhaba_script_lang.dir\build.make CMakeFiles/Zhaba_script_lang.dir/src/parser/syntax_tree_parser.cpp.i
.PHONY : src/parser/syntax_tree_parser.cpp.i

src/parser/syntax_tree_parser.s: src/parser/syntax_tree_parser.cpp.s
.PHONY : src/parser/syntax_tree_parser.s

# target to generate assembly for a file
src/parser/syntax_tree_parser.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Zhaba_script_lang.dir\build.make CMakeFiles/Zhaba_script_lang.dir/src/parser/syntax_tree_parser.cpp.s
.PHONY : src/parser/syntax_tree_parser.cpp.s

src/parser/type_parser.obj: src/parser/type_parser.cpp.obj
.PHONY : src/parser/type_parser.obj

# target to build an object file
src/parser/type_parser.cpp.obj:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Zhaba_script_lang.dir\build.make CMakeFiles/Zhaba_script_lang.dir/src/parser/type_parser.cpp.obj
.PHONY : src/parser/type_parser.cpp.obj

src/parser/type_parser.i: src/parser/type_parser.cpp.i
.PHONY : src/parser/type_parser.i

# target to preprocess a source file
src/parser/type_parser.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Zhaba_script_lang.dir\build.make CMakeFiles/Zhaba_script_lang.dir/src/parser/type_parser.cpp.i
.PHONY : src/parser/type_parser.cpp.i

src/parser/type_parser.s: src/parser/type_parser.cpp.s
.PHONY : src/parser/type_parser.s

# target to generate assembly for a file
src/parser/type_parser.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Zhaba_script_lang.dir\build.make CMakeFiles/Zhaba_script_lang.dir/src/parser/type_parser.cpp.s
.PHONY : src/parser/type_parser.cpp.s

src/zhaba/zhaba.obj: src/zhaba/zhaba.cpp.obj
.PHONY : src/zhaba/zhaba.obj

# target to build an object file
src/zhaba/zhaba.cpp.obj:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Zhaba_script_lang.dir\build.make CMakeFiles/Zhaba_script_lang.dir/src/zhaba/zhaba.cpp.obj
.PHONY : src/zhaba/zhaba.cpp.obj

src/zhaba/zhaba.i: src/zhaba/zhaba.cpp.i
.PHONY : src/zhaba/zhaba.i

# target to preprocess a source file
src/zhaba/zhaba.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Zhaba_script_lang.dir\build.make CMakeFiles/Zhaba_script_lang.dir/src/zhaba/zhaba.cpp.i
.PHONY : src/zhaba/zhaba.cpp.i

src/zhaba/zhaba.s: src/zhaba/zhaba.cpp.s
.PHONY : src/zhaba/zhaba.s

# target to generate assembly for a file
src/zhaba/zhaba.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Zhaba_script_lang.dir\build.make CMakeFiles/Zhaba_script_lang.dir/src/zhaba/zhaba.cpp.s
.PHONY : src/zhaba/zhaba.cpp.s

# Help Target
help:
	@echo The following are some of the valid targets for this Makefile:
	@echo ... all (the default if no target is provided)
	@echo ... clean
	@echo ... depend
	@echo ... edit_cache
	@echo ... rebuild_cache
	@echo ... Zhaba_script_lang
	@echo ... src/interpreter/bytecode.obj
	@echo ... src/interpreter/bytecode.i
	@echo ... src/interpreter/bytecode.s
	@echo ... src/interpreter/heap.obj
	@echo ... src/interpreter/heap.i
	@echo ... src/interpreter/heap.s
	@echo ... src/interpreter/runtime_error.obj
	@echo ... src/interpreter/runtime_error.i
	@echo ... src/interpreter/runtime_error.s
	@echo ... src/interpreter/stack.obj
	@echo ... src/interpreter/stack.i
	@echo ... src/interpreter/stack.s
	@echo ... src/interpreter/to_bytecode.obj
	@echo ... src/interpreter/to_bytecode.i
	@echo ... src/interpreter/to_bytecode.s
	@echo ... src/lang/ast.obj
	@echo ... src/lang/ast.i
	@echo ... src/lang/ast.s
	@echo ... src/lang/expression.obj
	@echo ... src/lang/expression.i
	@echo ... src/lang/expression.s
	@echo ... src/lang/generics.obj
	@echo ... src/lang/generics.i
	@echo ... src/lang/generics.s
	@echo ... src/lang/lang_tables.obj
	@echo ... src/lang/lang_tables.i
	@echo ... src/lang/lang_tables.s
	@echo ... src/lang/syntax_tree.obj
	@echo ... src/lang/syntax_tree.i
	@echo ... src/lang/syntax_tree.s
	@echo ... src/lang/token.obj
	@echo ... src/lang/token.i
	@echo ... src/lang/token.s
	@echo ... src/lang/types.obj
	@echo ... src/lang/types.i
	@echo ... src/lang/types.s
	@echo ... src/lang/zhdata.obj
	@echo ... src/lang/zhdata.i
	@echo ... src/lang/zhdata.s
	@echo ... src/parser/ast_parser.obj
	@echo ... src/parser/ast_parser.i
	@echo ... src/parser/ast_parser.s
	@echo ... src/parser/definitions_parser.obj
	@echo ... src/parser/definitions_parser.i
	@echo ... src/parser/definitions_parser.s
	@echo ... src/parser/expression_parser.obj
	@echo ... src/parser/expression_parser.i
	@echo ... src/parser/expression_parser.s
	@echo ... src/parser/lexer.obj
	@echo ... src/parser/lexer.i
	@echo ... src/parser/lexer.s
	@echo ... src/parser/parser_error.obj
	@echo ... src/parser/parser_error.i
	@echo ... src/parser/parser_error.s
	@echo ... src/parser/preprocess.obj
	@echo ... src/parser/preprocess.i
	@echo ... src/parser/preprocess.s
	@echo ... src/parser/syntax_tree_parser.obj
	@echo ... src/parser/syntax_tree_parser.i
	@echo ... src/parser/syntax_tree_parser.s
	@echo ... src/parser/type_parser.obj
	@echo ... src/parser/type_parser.i
	@echo ... src/parser/type_parser.s
	@echo ... src/zhaba/zhaba.obj
	@echo ... src/zhaba/zhaba.i
	@echo ... src/zhaba/zhaba.s
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles\Makefile.cmake 0
.PHONY : cmake_check_build_system

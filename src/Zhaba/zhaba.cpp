#include <string>
#include <iostream>
#include <fstream>
#include <sstream>
#include <stdlib.h> 
#include <filesystem>

#include "../Parser/Parser.hpp"
#include "../Compiler/Compiler.hpp"
#include "../TreeLib/TreeLib.hpp"

#include "CmdOptios.hpp"

void printUsage() {
  std::cout << usage << "\nFlags:\n";
  for (auto& [str, val] : zhdata.bools) {
    std::cout << "  --" + str + "\n";
  }
}

const bool deb = 
true
// false
;
int main(int argc, char **argv) {
  CmdParser cmd(argc, argv);
  zhdata.bin_path = argv[0];

  zhdata.bin_path.remove_filename();
  for (auto& [str, val] : zhdata.bools) {
    if (cmd.cmdOptionExists("--" + str))
      val = true;
  }

  if (cmd.cmdOptionExists("-h")) {
    printUsage();
  } else if (cmd.cmdOptionEqual(0, "compile") and cmd.size() == 3) {

  } else if (deb or cmd.size() >= 1) {
    std::filesystem::path file_path =
        deb ? R"(C:\Code\Zhaba-script-lang\Src\Zhaba\test.zh)"
            : cmd.getCmdOption(0);
    try {
      auto tmp = std::getenv("zhstd");
      if (!tmp)
        throw std::runtime_error("Cannot find zhstd environment variable :(");
      zhdata.std_path = tmp;
      auto start_time = clock();
      auto compiled = compileFile(file_path);
      std::cout << "[INFO] compiling complete in " + std::to_string((clock() - start_time) * 1.0 / CLOCKS_PER_SEC) << std::endl;

      auto tmp_file = std::ofstream("zhaba_tmp.c");
      tmp_file << compiled;
      tmp_file.close();
      system("gcc zhaba_tmp.c -o zhaba_tmp -O3");
      system(".\\zhaba_tmp.exe");
    }
    catch (ParserError error) {
      std::cout << error.toString();
    } catch (const std::exception& err) {
      std::cout << err.what() << std::endl;
    } catch (...) {
      std::cout << "Uncaught error :(" << std::endl;
    }
  } else {
    std::cout << "Wrong usage :(\n";
    printUsage();
  }
}

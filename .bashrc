alias install="sudo apt-get install"
alias rmlock="rm /var/cache/apt/archives/lock  && rm /var/lib/dpkg/lock"
alias makecmake="cmake -G\"Eclipse CDT4 - Unix Makefiles\" -DCMAKE_CXX_COMPILER_ARG1=\"-std=c++11\""
alias makedebug="makecmake -DCMAKE_BUILD_TYPE=Debug"
alias makerelease="makecmake -DCMAKE_BUILD_TYPE=Release"


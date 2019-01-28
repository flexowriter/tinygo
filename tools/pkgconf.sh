#!/bin/bash
version=$(llvm-config --version)

echo Name: LLVM
echo Description: Low-level Virtual Machine compiler framework
echo Version: ${version}
echo URL: http://www.llvm.org/
echo Requires:
echo Conflicts:
echo Libs: $(llvm-config --ldflags --libs --system-libs all)
echo Cflags: $(llvm-config --cppflags)


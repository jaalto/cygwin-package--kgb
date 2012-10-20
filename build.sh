#!/bin/sh

LDFLAGS="-D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64"
cc=${CXX:-g++}

$cc --version | head -n 1
$cc $CXXFLAGS $LDFLAGS -o kgb kgb_arch_posix_by_slawek.cpp

# End of file

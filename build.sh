#!/bin/sh
set -x

# These are Gcc link flags
LDFLAGS="-D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64"

${CXX:-gcc} $CXXFLAGS $LDFLAGS -o kgb kgb_arch_posix_by_slawek.cpp

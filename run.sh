#!/bin/bash

PROJECT_ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

LIBS_DIR=""
if [ -z "$LIBS_DIR" ]; then
    echo "The LIBS_DIR variable has not been set. It should be the same value that is in build_linux.sh."
    exit
fi

LD_LIBRARY_PATH=$LIBS_DIR:$LD_LIBRARY_PATH $PROJECT_ROOT/cortex


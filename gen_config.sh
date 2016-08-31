#!/bin/bash
CROSS_COMPILE="$1"
./configure --host="${CROSS_COMPILE}" --enable-static-link --without-bash-malloc --enable-largefile --enable-alias --enable-history  --enable-readline --enable-multibyte --enable-job-control --enable-array-variables CFLAGS='-static -O2 -fPIE' LDFLAGS='-static -O2 -fPIE'

#!/bin/bash -xv
# SPDX-FileCopyrightText: 2024 Masayuki Katsuda
# SPDX-License-Identifier: BSD-3-Clause

ng () {
        echo NG at LINE $1
        res=1
}

res=0

### I/O TEST ###
out=$(seq 5 | ./plus)
[ "${out}" = 15 ] || ng $LINENO

[ "$res" = 0 ] && echo OK
exit $res




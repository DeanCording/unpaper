#!/bin/sh

# SPDX-FileCopyrightText: 2005 The unpaper authors
#
# SPDX-License-Identifier: GPL-2.0-only

echo "[D3] Stretch to sheet size."

set -e
set -x

rm -f tests/resultsD3.ppm
./unpaper -v -n --stretch 20cm,10cm ${srcdir:-.}/tests/imgsrc003.png tests/resultsD3.ppm

[ -f tests/resultsD3.ppm ]

./compare-image ${srcdir:-.}/tests/goldenD3.ppm tests/resultsD3.ppm

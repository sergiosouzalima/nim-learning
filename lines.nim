## lines.nim
## Text file lines counter
## Author: Sergio Lima
## Created: May, 28 2022
## How to compile for Linux:
##   nim c --verbosity:0 --hints:off -d:danger -d:lto --opt:speed lines.nim
## How to compile for Windows:
##   nim c --verbosity:0 --hints:off -d:danger -d:lto --opt:speed -d:mingw --cpu:amd64 lines.nim
## How to run
##   ./lines text_file.txt

import memfiles, os

if paramCount() < 1:
  echo "File name not found."
  quit(-1)

var i: int
for line in memSlices(memFiles.open(paramStr(1))):
  inc(i)

echo i
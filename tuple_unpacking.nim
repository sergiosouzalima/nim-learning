## tuple_unpacking.nim
## Tuple unpacking.
##
## A tuple’s fields can be assigned directly to multiple identifiers.
## Created May, 28th 2022
## Author Sergio

import std/strutils

let
  fullPath = "usr/local/nimc.html"
  pathFile = fullPath.split("/")
  (dir, path, file) = (pathFile[0], pathFile[1], pathFile[2])

echo dir, " ", path, " ", file
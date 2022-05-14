# statically_typed.nim

let
    a: int32= 42
    c = 43

var x = 44

x = 1 # mutable

discard """
  c = 2 # error immutable
"""

echo a, " ", c, " ", x
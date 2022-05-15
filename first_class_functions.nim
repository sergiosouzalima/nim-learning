# first_class_functions.nim
#

import sequtils

let powersOfTwo = @[1,2,4,8,16,32]

echo powersOfTwo.filter(proc (x: int): bool = x > 4)

echo powersOfTwo.filter do (x: int) -> bool : x > 4
## Program name........: ternary_operator.nim
## Program description.: Ternary conditional operator.
## Author..............: Sergio Lima
## Created on..........: Nov, 7 2022
## How to compile
##   $ nim c -d:ssl --verbosity:0 --hints:off -d:danger -d:lto --opt:speed ternary_operator.nim
## How to run
##   $ ./ternary_operator

import random
randomize()
let n = rand(10)
let parImpar = n mod 2
echo "O numero ",n," e' "
echo if parImpar == 0: "par" else: "impar"
## Program name........: case_statment.nim
## Program description.: Case statement.
## Author..............: Sergio Lima
## Created on..........: Nov, 13 2022
## How to compile
##   $ nim c -d:ssl --verbosity:0 --hints:off -d:danger -d:lto --opt:speed case_statment.nim
## How to run
##   $ ./case_statment

from std/strutils import parseInt
let validNumber = "Entre um numero de 0 a 9"
echo validNumber
let n = parseInt(readLine(stdin))
case n
  of 0..2, 4..7: echo n," faz parte de:{0,1,2,4,5,6,7}"
  of 3, 8: echo "O numero e' 3 ou 8"
  else: echo validNumber


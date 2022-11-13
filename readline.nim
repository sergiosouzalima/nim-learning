## Program name........: readline.nim
## Program description.: Read data from stdin.
## Author..............: Sergio Lima
## Created on..........: Oct, 19 2022
## How to compile
##   $ nim c -d:ssl --verbosity:0 --hints:off -d:danger -d:lto --opt:speed readline.nim
## How to run
##   $ ./readline

echo "Enter your name: "
let message = stdin.readLine()
echo "\nOla ",message
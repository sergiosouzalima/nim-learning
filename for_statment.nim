## Program name........: for_statment.nim
## Program description.: Case statement.
## Author..............: Sergio Lima
## Created on..........: Nov, 13 2022
## How to compile
##   $ nim c -d:ssl --verbosity:0 --hints:off -d:danger -d:lto --opt:speed for_statment.nim
## How to run
##   $ ./for_statment

echo "Contando de 1 a 5"
for i in countup(1, 5):
  stdout.write(i," ")
echo ""
for i in countup(1, 5): stdout.write(i," ")
echo ""
for i in 1 .. 5: stdout.write(i," ")
echo ""
for i in countup(1, 5, 2): stdout.write(i," ")
echo "\nContando de 2 a -2"
for i in countdown(2, -2): stdout.write(i," ")
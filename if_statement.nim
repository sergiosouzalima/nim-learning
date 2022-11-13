## Program name........: if_statement.nim
## Program description.: If statement.
## Author..............: Sergio Lima
## Created on..........: Nov, 6 2022
## How to compile
##   $ nim c -d:ssl --verbosity:0 --hints:off -d:danger -d:lto --opt:speed if_statement.nim
## How to run
##   $ ./if_statement

echo "Entre com seu nome: "
let nome = stdin.readLine()
if nome == "":
  echo "Você esqueceu seu nome?"
elif nome == "nome":
  echo "Entre com seu nome!"
else:
  echo "Olá, ",nome,"!"
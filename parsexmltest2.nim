## Program name........: parsexmltest2.nim
## Program description.: Testing parsexml library
## Author..............: Sergio Lima
## Created on..........: Aug, 3 2022
## How to compile
##   $ nim c -d:ssl --verbosity:0 --hints:off -d:danger -d:lto --opt:speed parsexmltest2.nim
## How to run
##   $ ./parsexmltest2

import times

proc main() =
  let time = cpuTime()
  const filename = "parsexml.xml"

  for line in lines(filename):
    let currentLine = line
    echo currentLine

  echo "Time taken: ", cpuTime() - time

when isMainModule:
  main()
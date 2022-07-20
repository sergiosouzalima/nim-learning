## Program name........: parsexml01.nim
## Program description.: Testing parsexml library
## Author..............: Sergio Lima
## Created on..........: Jul, 20 2022
## How to compile
##   $ nim c -d:ssl --verbosity:0 --hints:off -d:danger -d:lto --opt:speed parsexml01.nim
## How to run
##   $ ./parsexml01

import streams, parsexml, times

proc main() =
  const filename = "wrkf01_salary_payments.hwf"

  let s = newFileStream(filename, fmRead)
  if s == nil: quit("cannot open the file " & filename)

  var
    attrkey, attrval, elemstart, data, line: string
    x: XmlParser

  let
    time = cpuTime()
    f = open("nim_output.csv", fmWrite)

  echo "debug 0050"
  open(x, s, filename)
  while true:
    #walk through XML
    echo "debug 0100"
    case x.kind
    of xmlAttribute:
      attrkey = x.attrKey
      echo "debug 0200 --------> " & attrkey
      if attrkey == "id":
        attrval = x.attrValue

    of xmlElementStart:
      elemstart = x.elementName
      echo "debug 0300 " & elemstart

    of xmlCharData:
      echo "debug 0400"
      data = x.charData
      echo "debug 0450 ===> " & elemstart
      if elemstart == "filename":
        echo "debug 0500 " & attrval & ";" & elemstart & ";" & data
        line = attrval & ";" & elemstart & ";" & data
        f.writeLine(line)
    of xmlEof: break # end of file reached
    else: discard # ignore other events
    x.next()
  echo "Time taken: ", cpuTime() - time
  x.close()


main()
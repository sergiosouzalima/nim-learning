## Program name........: parsexmltest.nim
## Program description.: Testing parsexml library
## Author..............: Sergio Lima
## Created on..........: Jul, 20 2022
## How to compile
##   $ nim c -d:ssl --verbosity:0 --hints:off -d:danger -d:lto --opt:speed parsexmltest.nim
## How to run
##   $ ./parsexmltest

import streams, parsexml, times

proc main() =
  const filename = "parsexml.xml"

  let time = cpuTime()
  let fileStream = newFileStream(filename, fmRead)
  var xmlParser: XmlParser

  if fileStream == nil: quit("cannot open the file " & filename)
  open(xmlParser, fileStream, filename)

  while xmlParser.kind != xmlEof:
    case xmlParser.kind
    of xmlAttribute:
      echo "xmlAttribute.attrkey.......: " & xmlParser.attrkey
      echo "xmlAttribute.attrValue.....: " & xmlParser.attrValue
    of xmlElementStart:
      echo "xmlElementStart.elementName: " & xmlParser.elementName
    of xmlCharData:
      echo "xmlCharData.charData.......: " & xmlParser.charData
    else: discard
    xmlParser.next()

  echo "Time taken: ", cpuTime() - time
  xmlParser.close()

when isMainModule:
  main()
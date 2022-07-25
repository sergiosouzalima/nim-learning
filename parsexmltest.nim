## Program name........: parsexmltest.nim
## Program description.: Testing parsexml library
## Author..............: Sergio Lima
## Created on..........: Jul, 20 2022
## How to compile
##   $ nim c -d:ssl --verbosity:0 --hints:off -d:danger -d:lto --opt:speed parsexmltest.nim
## How to run
##   $ ./parsexmltest

import streams, parsexml, times

type
  Tag = object of RootObj
    name: string
    kind: string

  XmlTag = ref object of Tag
    ancestorName: string


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
      echo "xmlAttribute.attrkey...........: " & xmlParser.attrkey
      echo "xmlAttribute.attrValue.........: " & xmlParser.attrValue
    of xmlElementStart:
      echo "xmlElementStart.elementName....: " & xmlParser.elementName
    of xmlElementEnd:
      echo "xmlElementEnd.elementName......: " & xmlParser.elementName
    of xmlCharData:
      echo "xmlCharData.charData...........: " & xmlParser.charData
    else: discard
    xmlParser.next()

  echo "Time taken: ", cpuTime() - time
  xmlParser.close()

when isMainModule:
  main()


#[

$ ./parsexmltest
xmlElementStart.elementName....: workflow
xmlElementStart.elementName....: name
xmlCharData.charData...........: wrkf01_salary_payments
xmlElementEnd.elementName......: name
xmlElementStart.elementName....: name_sync_with_filename
xmlCharData.charData...........: Y
xmlElementEnd.elementName......: name_sync_with_filename
xmlElementStart.elementName....: description
xmlElementEnd.elementName......: description
xmlElementStart.elementName....: extended_description
xmlElementEnd.elementName......: extended_description
xmlElementStart.elementName....: workflow_version
xmlElementEnd.elementName......: workflow_version
xmlElementStart.elementName....: created_user
xmlCharData.charData...........: -
xmlElementEnd.elementName......: created_user
xmlElementStart.elementName....: modified_date
xmlCharData.charData...........: 2022/07/01 16:07:47.060
xmlElementEnd.elementName......: modified_date
xmlElementStart.elementName....: parameters
xmlElementEnd.elementName......: parameters
xmlElementStart.elementName....: actions
xmlElementStart.elementName....: action
xmlAttribute.attrkey...........: id
xmlAttribute.attrValue.........: 001
xmlCharData.charData...........: Start
xmlElementEnd.elementName......: name
xmlElementStart.elementName....: description
xmlElementEnd.elementName......: description
xmlElementStart.elementName....: type
xmlCharData.charData...........: SPECIAL
xmlElementEnd.elementName......: type
xmlElementEnd.elementName......: action
xmlElementEnd.elementName......: actions
xmlElementEnd.elementName......: workflow
Time taken: 0.000331446

nim> import tables
nim> var xmlTag = initTables[string, string]()
Error: undeclared identifier: 'initTables'
candidates (edit distance, scope distance); see '--spellSuggest':
 (1, 2): 'initTable' [proc declared in /home/sergio/.choosenim/toolchains/nim-1.6.6/lib/pure/collections/tables.nim(270, 6)]
nim> var xmlTag = initTable[string, string]()
nim> xmlTag["workflow.name"]="wrkf01_salary_payments"
nim> xmlTag["workflow.name_sync_with_filename"]="Y"
nim> xmlTag["workflow.description"]=""
nim> xmlTag["workflow.extended_description"]=""
nim> xmlTag["workflow.modified_date"]="2022/07/01 16:07:47.060"
nim> echo xmlTag
{"workflow.description": "", "workflow.modified_date": "2022/07/01 16:07:47.060", "workflow.name_sync_with_filename": "Y", "workflow.name": "wrkf01_salary_payments", "workflow.extended_description": ""}
nim> xmlTag["workflow.actions.action.name"]="Start"
nim> echo xmlTag
{"workflow.description": "", "workflow.actions.action.name": "Start", "workflow.modified_date": "2022/07/01 16:07:47.060", "workflow.name_sync_with_filename": "Y", "workflow.name": "wrkf01_salary_payments", "workflow.extended_description": ""}
nim> for key, value in xmlTag:
....   echo "key=",key," value=",value
....
key=workflow.description value=
key=workflow.actions.action.name value=Start
key=workflow.modified_date value=2022/07/01 16:07:47.060
key=workflow.name_sync_with_filename value=Y
key=workflow.name value=wrkf01_salary_payments
key=workflow.extended_description value=
nim> echo xmlTag.hasKey("actions")
false
nim> echo xmlTag.hasKey("action")
false
nim> echo xmlTag.hasKey("workflow.name")
true
nim> echo xmlTag.hasKey("workflow.name ")
false
nim> echo xmlTag.hasKey("workflow.name")
true



]#
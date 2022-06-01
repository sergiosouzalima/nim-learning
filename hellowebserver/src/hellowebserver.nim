## hellowebserver.nim

import asynchttpserver, asyncdispatch

var server = newAsyncHttpServer()
proc cb(req: Request) {.async.} =
  await req.respond(Http200, "Hello World")

when isMainModule:
    echo "WebServer Started visit http://localhost:8080/"
    waitFor server.serve(Port(8080), cb)

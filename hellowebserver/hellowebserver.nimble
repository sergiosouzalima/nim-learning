## hellowebserver.nimble

# Package
version       = "0.1.0"
author        = "Sergio Lima"
description   = "A Hello World Web Server"
license       = "MIT"
srcDir        = "src"
installExt    = @["nim"]
bin           = @["hellowebserver"]
# Dependencies
requires "nim >= 1.6.6"

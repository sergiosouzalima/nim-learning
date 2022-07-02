## Program name........: scheduleByEvery.nim
## Program description.: .
## Author..............: Sergio Lima
## Created on..........: Jul, 2 2022
## How to compile:
##   $ nim c --threads:on scheduleByEvery.nim
## How to run
##   $ ./scheduleByEvery


import schedules, times, asyncdispatch

schedules:
  every(seconds=1, id="tick", async=true):
    echo("async tick ", now())
    await sleepAsync(2000)
  every(seconds=10, id="tick"):
    echo("sync tick ", now())
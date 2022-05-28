## template0200.nim
##
##

template repeat(a) =
  while true:
    a

template until(a) =
    if a: break


var c = 0
repeat:
  c += 1
  echo c
  until: c > 10

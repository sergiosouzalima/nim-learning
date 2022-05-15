# functional_programming.nim

import sequtils, sugar, strutils

let list = @["Dominik Picheta", "Andreas Rumpf", "Desmond Hume"]

list.map(
  (x: string) -> (string, string) => (x.split[0], x.split[1])
).echo
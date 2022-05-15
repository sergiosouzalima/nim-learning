# generics.com
#

proc showArgument[T](arg: T) =
  echo(arg)


showArgument 3.14
showArgument 3
showArgument "Nim rules"
showArgument[int](1)
showArgument[float](1.2)

type
  Number = int | float | uint

proc isPositive(x: Number): bool =
  return x >= 0

echo isPositive 0
echo isPositive -1
echo isPositive -0.5

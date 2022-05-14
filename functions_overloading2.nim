# functions_overloading2.nim
#
# function: overloading

proc positiveOrNegative(num: int): string =
  if num == 0: return "zero"
  if num < 0: return "negative"
  if num > 0: return "positive"

proc positiveOrNegative(num: float): string =
  return positiveOrNegative(toInt(num))

echo positiveOrNegative 3.14
echo positiveOrNegative 3
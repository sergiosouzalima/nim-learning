# functions_overloading.nim
#
# function: overloading

proc positiveOrNegative(num: int): string =
  if num == 0: return "zero"
  if num < 0: return "negative"
  if num > 0: return "positive"

proc positiveOrNegative(num: float): string =
  if num == 0: return "zero"
  if num < 0: return "negative"
  if num > 0: return "positive"

proc positiveOrNegative2(num: int | float): string =
  if num == 0: return "zero"
  if num < 0: return "negative"
  if num > 0: return "positive"


echo positiveOrNegative 3.14
echo positiveOrNegative -3
echo positiveOrNegative2 -1.2
echo positiveOrNegative2 1
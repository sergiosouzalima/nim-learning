# functions_overloading
#
# function: overloading

proc positiveOrNegative(num:float): string =
    if num == 0: return "zero"
    if num < 0: return "negative"
    if num > 0: return "positive"

proc positiveOrNegative(num: int): string =
if num == 0: return "zero"
if num < 0: return "negative"
    if num > 0: return "positive"


echo positiveOrNegative 3.14
echo positiveOrNegative 3
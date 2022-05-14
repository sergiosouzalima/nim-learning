# functions_classic_return2
# 
# functions - classic return

proc positiveOrNegative(num: int): string =
    if num == 0: return "zero"
    if num < 0: return "negative"
    if num > 0: return "positive"

echo positiveOrNegative(0)
echo positiveOrNegative(1)
echo positiveOrNegative(-1)
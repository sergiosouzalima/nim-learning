# functions_implicit_return
# 
# functions - implicit return

proc positiveOrNegative(num: int): string =
    case num:
        of low(int).. -1:
            "negative"
        of 0:
            "zero"
        of 1..high(int):
            "positive"
        else:
            "invalid"

echo positiveOrNegative(0)
echo positiveOrNegative(1)
echo positiveOrNegative(-1)
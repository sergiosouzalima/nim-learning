# functions_style_agnostic_calls
# 
# functions - style agnostic calls

proc positiveOrNegative(num: int): string =
    case num:
        of low(int).. -1:
            "negative"
        of 0:
            "zero"
        of 1..high(int):
            "positive"

echo positive_or_negative(1)
echo positiveOrNegative(-1)
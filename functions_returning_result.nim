# functions_returning_result
# 
# functions - returning result

proc positiveOrNegative(num: int): string =
    result = case num:
        of low(int).. -1:
            "negative"
        of 0:
            "zero"
        of 1..high(int):
            "positive"


echo positiveOrNegative(0)
echo positiveOrNegative(1)
echo positiveOrNegative(-1)
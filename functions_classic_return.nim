# functions_classic_return.nim
#
# functions - classic return

proc positiveOrNegative(num: int): string =
    return case num:
        of low(int).. -1:
            "negative"
        of 0:
            "zero"
        of 1..high(int):
            "positive"
        else: # unreachable else
            "invalid"

echo positiveOrNegative(0)
echo positiveOrNegative(1)
echo positiveOrNegative(-1)
# functions_ufcs
# 
# functions - ufcs - Uniform Function Call Syntax
# https://en.wikipedia.org/wiki/Uniform_Function_Call_Syntax
# "UFCS are particularly useful when function calls are chained"


proc positiveOrNegative(num: int): string =
    case num:
        of low(int).. -1:
            "negative"
        of 0:
            "zero"
        of 1..high(int):
            "positive"

let x = 1

echo positiveOrNegative(1)
echo x.positiveOrNegative()
echo x.positiveOrNegative
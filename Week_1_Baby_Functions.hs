doubleMe x = 2*x
tripleMe x = 3*x
func1 x y = doubleMe x + tripleMe y

doubleSmallNumber x =
    if x >= 100
        then x
        else 2*x

doubleSmallNumber' x =
    if x > 100
        then "x is > 100"
        else "Hi"

hypotenuse a b = sqrt(a**2 + b**2)

identifyCamel humps =
    if humps == 1
        then "dromedary"
        else "Bactrian"

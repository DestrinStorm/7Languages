#How would you change / to return 0 if the denominator is zero?
#Totally stole this off someone else...

Div := Number getSlot("/")

10 Div(5) println
10 Div(0) println

Number / := method (i, if (i != 0, self Div(i), 0))

(10 / 5) println
(10 / 0) println
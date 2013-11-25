• Write a list comprehension to build a childhood multiplication
table. The table would be a list of three-tuples where the first two
are integers from 1–12 and the third is the product of the first two.

let integers = [1..12]
[(a,b,a*b) | a <- integers, b <- integers, a < b ]
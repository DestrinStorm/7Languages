#Add up all the numbers in a 2 dimensional array

Array := list(list(1,2,3),list(4,5,6),list(7,8,9))

result := 0
for(x,0,Array size-1,1, result = result + (Array at(x) sum))
result println
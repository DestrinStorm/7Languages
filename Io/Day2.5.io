#Write a prototype for a two-dimensional list. The dim(x,y) method
#should allocate a list of y lists that are x elements long. set(x,y,value)
#should set a value, and get(x,y) should return that value.

TwoDimList := List clone

TwoDimList dim := method(x,y, for(i,1,y,1, self append(list() setSize(x))))
TwoDimList set := method(x,y,value, self at(x) insertAt(value,y);self at(x) removeAt(y+1))
TwoDimList get := method(x,y, self at(x) at(y))

TwoDimList dim(2,3)
TwoDimList set (0,0,"this")
TwoDimList set (0,1,"is")
TwoDimList set (1,0,"a")
TwoDimList set (1,1,"2")
TwoDimList set (2,0,"dimensional")
TwoDimList set (2,1,"list")
for(x,0,TwoDimList size-1,1,( for(y,0,TwoDimList at(x) size-1,1,( TwoDimList at(x) at(y) print ) " " print) );"" println)
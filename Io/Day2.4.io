#Add a slot called myAverage to a list that computes the average of
#all thenumbers in a list. What happens if there are no numbers
#in a list? (Bonus:Raise an Io exception if any item in the list is not a number.

List myAverage := method(self sum / self size)

avgme := list(1,2,3,4,5,6,7,8,9,10)
avgme myAverage println

iambroken := list("one","two","three","four","five")
e := try(iambroken myAverage println)
if (e == nil, iambroken myAverage println, "List contains non numeric data" println)
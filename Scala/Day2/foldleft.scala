/*Use foldLeft to compute the total size of a list of strings

val list = List(1,2,3)
println(list.foldLeft(0)((sum, value)=> sum+ value))
*/

val list = List("this","is","a","list","of","strings")
println(list.foldLeft(0)((sum, value)=> sum+(value.length)))
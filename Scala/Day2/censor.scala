/*Write a Censor trait with a method that will replace the curse words
Shoot and Darn with Pucky and Beans alternatives. Use a map to
store the curse words and their alternatives.
*/

class Sentence(val contents:String)
class CleanSentence(override val contents:String) extends Sentence(contents) with Censor

trait Censor {
	
	val naughtywords = Map("Shoot" -> "Pucky", "Darn" -> "Beans")
	
	def cleanse(sentence:String):String = {
		var returnsentence = ""
		sentence.split(" ").foreach(word => returnsentence = returnsentence + replace(word) + " ")
		return returnsentence
	}

	def replace(word:String):String = {
		var curse = ""
		naughtywords.keys.foreach(key => if(word.equalsIgnoreCase(key)) {curse = key})
		if(curse.length > 0) {return naughtywords(curse)} else {return word}
	}
}

val nice = new CleanSentence("Hello, how do you do, good Sir!")
println(nice.cleanse(nice.contents))
val naughty = new CleanSentence("Shoot, I burned the darn muffins")
println(naughty.cleanse(naughty.contents))
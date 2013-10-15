num = (rand(10)+1)
guessedit = false
guesses = 0
while guessedit == false
	guesses = guesses + 1
	puts "Guess a number between 1 and 10"
	guess = gets.to_i
	puts "Lower" if guess > num 
	puts "Higher"if guess < num
	if guess == num 
		puts "Correct!  The number was #{num} and you took #{guesses} guess(es) to work that out"
		guessedit = true
	end
end
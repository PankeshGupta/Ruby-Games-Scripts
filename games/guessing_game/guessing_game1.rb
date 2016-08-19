puts "\n\nWelcome to the number-guessing game!\n\n\n"
print "What difficulty level would you like. You must type out the word 'low', 'medium', or 'hard'. Otherwise, you will be entered into a 'low' level. What level would you like to play:  "
level = gets.chomp
puts "\n\nEnter 'q' to quit.\n\n\n"
min = 1

max = case level
	when "medium" then 100
	when "hard" then 1000
	else      10
end

puts "The magic number is between #{min} and #{max}. \n\n"
magic_number = rand(max)+1

print "\nWhat is your guess? \n\n"
guess = gets.chomp

while guess =~ /\d/
	case guess.to_i
	when 0...magic_number
		puts "Too low, try again. \n\n"
	when magic_number
		puts "\nYou guessed it!\n\nThe magic number was #{magic_number}.\n\n"
		print "Press the 'Enter' key to continue.\n\n"
		gets
		exit
	else
		puts "Too high, try again.\n\n"
	end
	print "\nWhat is your guess?\n\n"
	guess = gets.chomp
end

puts "Invalid entry, you lose.\n\n"
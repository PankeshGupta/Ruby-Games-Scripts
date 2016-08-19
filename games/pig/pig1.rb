puts "\n\nWelcome to the game PIG!\n\n"
puts "\n----INSTRUCTIONS----\n\n"
puts "The object of the game is to reach 100 points."
puts "\n***Be careful, if you roll a 1, you lose your***"
puts "***turn and any points you may have received.***"
puts "\nGood luck!\n"

puts "\n\nPress <Enter> to continue...\n\n"
gets
player1 = 0
player2 = 0
turn_total = 0
turn = true
d1 = rand(6)+1

puts "\n\n---Player 1 roll---\n\n"
puts "\n\nPress <Enter> to roll again or type 'h' to hold.\n\n"
input = gets.chomp.downcase

while input != 'q'
	unless input == 'h'
		if turn
			puts "\n\n---Player 1 roll---\n\n"
			puts "Player 1's total is: #{player1}.\n\n"		
		else
			puts "\n\n---Player 2 roll---\n\n"
			puts "\n\nPlayer 2's total is: #{player2}.\n\n"
		end
		d1 = rand(6)+1
		puts "\n\nYou rolled a: #{d1}.\n\n"
			if d1 == 1
			puts "\n\n****So sorry, you received no points and forfeit your turn.****\n\n"
			puts "\n\nPress <Enter> to continue...\n\n"
			gets
			turn_total = 0
			input = 'h'
			next
		end

		turn_total = turn_total+d1
		puts "\n\nYour total for thus turn is: #{turn_total}.\n\n"
			if turn_total >= 100
				puts "\n\nYou win!\n\n"
				exit
			end

			puts "\n\nPress <Enter> to hold again or type 'h' to hold.\n\n"
			input = gets.chomp.downcase
		else
			if turn
				player1 = player1+turn_total
				puts "\n\nPlayer 1's total is: #{player1}.\n\n"
					if player1 >= 100
						puts "\n\nPlayer 1 wins!\n\n"
						exit
					end
					turn = false
					else
					player2 = player2+turn_total
					puts "\n\nPlayer 2's total is: #{player2}."
					if player2 >= 100
						puts "\n\nPlayer 2 wins!\n\n."
						exit
					end
					turn = true
				end
				turn_total = 0
				input = 'other'
			end
		end



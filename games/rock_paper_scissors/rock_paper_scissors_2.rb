
puts "Would you like to play a game of rock, paper, scissors? Type 'y' or 'n'."
x = ('y')

def game(x)
if (x == 'y')

puts "\n\nWelcome to Rock, Paper, Scissors!"
puts "This is a game of chance; the computer randomly picks one of three choices."
puts "\nRock beats scissors, but it is beaten by paper."
puts "Scissors beat paper, but it is beaten by rock."
puts "Paper beats rock, but it is beaten by scissors."

puts "r for rock"
puts "s for scissors"
puts "p for paper\n"
print "\nEnter one of the above to play:  "

computer = "rsp"[rand(3)].chr
player = $stdin.gets.chomp.downcase

def case [player, computer]
when ['p','r'], ['s','p'], ['r','s']
	puts "\n\nYou Win!"
when ['r','r'], ['p','p'], ['s','s']
	puts "\n\nYou tied!"
else puts "\n\nYou LOSE!"
end

puts "The computer choose: #{computer}"
elsif (x == !'y')
	puts "I'm glad to have met you. Thanks for playing. Now, go play outside."

game.each do |x|
	puts "#{game(x)}"

$stdin.gets 
end
end

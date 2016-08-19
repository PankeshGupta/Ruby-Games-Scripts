
puts "\n\nWelcome to Rock, Paper, Scissors!"
puts "This is a game of chance; the computer randomly picks one of three choices."
puts "\nRock beats scissors, but it is beaten by paper."
puts "Scissors beat paper, but it is beaten by rock."
puts "Paper beats rock, but it is beaten by scissors."

# this is the start of the loop


def game 
  loop do
  puts "r for rock"
  puts "s for scissors"
  puts "p for paper\n"
  print "\nEnter one of the above to play:  "

  computer = "rsp"[rand(3)].chr
  player = $stdin.gets.chomp.downcase

  case [player, computer]
  when ['p','r'], ['s','p'], ['r','s']
  	puts "\n\nYou Win!"
  when ['r','r'], ['p','p'], ['s','s']
  	puts "\n\nYou tied!"
  else puts "\n\nYou LOSE!"
  end

  puts "The computer choose: #{computer}"

  puts "Type 'yes' to continue playing."

  input = $stdin.gets.chomp.downcase   
  break unless input == "yes"
  # use following condition if you want to enable the user to press <Enter> to conitnue
  # break unless input == "/n"
end
end

game 
# this is the end of the loop

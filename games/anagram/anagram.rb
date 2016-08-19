require_relative 'reverse_letters'

puts “What is your two letter word?”
reverse_letters = gets
gets = chomp.downcase.split

def reverse_letters(letters)
	length = letters.length
		reversed_letters = Array.new(length)
		letters.each_with_index do |letter, index|
		reversed_letters[length - index - 1] = letter
end

	reversed_letters
end

puts "Your anagrams are : #{reversed_letters}"
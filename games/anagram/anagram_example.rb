require_relative 'two_word_anagram' #this line was giving an error
# requrie_relative means including the file relative to the current files location 
# and it requires the name of the file, not the method name that was defined in the file
# in this case make sure that the file 'tow_word_anagram.rb' is present in the same folder
# as the current file.
# once it is included you can access the methods defined in that file, if you put code
# like puts "abc" in that file outside the function that will be executed too.
# that's why I have commented the lines where it takes input in the file 'two_word_anagram'

puts "What is your three letter word?"
word = gets.chomp.downcase
# takes the word and converts into the downcase

def find_anagram(word) # must be 3 letters
	
  if word.length == 3
		word_array = word.split(//) # place the characters of the word into an array
    # now we will do is fix one character at the start of anagram meaning
    # for abc we will fix a and then create anagrams for the bc,
    # then we will fix b at start and create anagrams for ac
    # then we will fix c at start and create anagrams for ab
		output_array = word_array.collect do |i|  
      temp = word_array - [i] # we subtract the letter that will be fixed
      reverse_letters(temp.join).collect {|str| i+str} # joins the 3 character array with all permutations and inserts each into output array.
    end
   	
		return output_array.flatten #conver the collection of the arrays into a single array
	else
		puts "Incorrect word length.  Please pass 3 letter word only."
	end
end


puts find_anagram(word)
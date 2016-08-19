require_relative 'reverse_letters'

def find_anagram(word) # must be 3 letters
	if word.length == 3
		word_array = word.split(//) # place the characters of the word into an array
		output_array = word_array.permutation.map{ |i| i.join } # joins the 3 character array with all permutations and inserts each into output array.
		
		return output_array
	else
		puts "Incorrect word length.  Please pass 3 letter word only."
	end
end
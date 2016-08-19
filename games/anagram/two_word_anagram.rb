puts "What is your three letter word?"
word = gets.chomp.downcase

def reverse_letters(word) # 
    word_array = word.split(//) # place the characters of the word into an array
    output_array = word_array.permutation.map{ |i| i.join } # joins the characters in the array of two permutations(for two letters words i.e "sa" "cd")
    return output_array #returns the array of anagrams
end

puts reverse_letters(word)
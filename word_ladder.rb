def words
  File.readlines('selected_four-letter_words.txt')
end

def ladder(starting_word)
	output = ''
  words.each do |word|
  		distance = 0
  		word.chomp.chars.each_with_index do |character, i|
  			distance += 1 unless character == starting_word[i]
  		end
  		output << word if distance == 1
  end
  output
end

puts ladder('puma')
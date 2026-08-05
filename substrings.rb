def substrings(words, dictionary) 
  string = words.downcase
  final_hash= string.split(' ').reduce(Hash.new(0)) do |object, word|
    dictionary.each {|element| object[element] += 1 if word.include?(element)}
    object
  end
  return final_hash
end

words = "cool"
dictionary = [ "coolos", "nope", "pascool", "cool", "cool", "nthing" ]

puts substrings(words, dictionary)
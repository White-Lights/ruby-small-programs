def substrings(str, dictionary)
  count = dictionary.reduce({}) do |count, word|
    count[word] = str.split(" ").map(&:downcase).filter{|substr| substr.include?(word)}.length
    count
  end
  return count.filter{|word| count[word] != 0}
end
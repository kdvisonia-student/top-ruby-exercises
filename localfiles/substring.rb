def substrings(word, dictionary) 
  res = Hash.new(0)
  dc_word = word.downcase
  dictionary.each do |entry|
    dc_entry = entry.downcase
    count = 0
    index = 0

    while(f_index = dc_word.index(dc_entry, index))
      count += 1
      index = f_index + 1
    end

    res[entry] = count if count > 0
  end
  res
end

dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "low", "own", "part", "partner", "sit"]

p substrings("Howdy partner, we're basically the same, don't you know?", dictionary)
def caesar_cypher(str, index)
  original = "abcdefghijklmnopqrstuvwxyz"
  shift = index % 26
  shifted = (original + original)[shift..(shift + 25)]

  newstr = ""

  str.each_char do |char|
    if original.include?(char.downcase)
      position = original.index(char.downcase)
      new_char = shifted[position]
      new_char = new_char.upcase if char == char.upcase
      newstr << new_char
    else
      newstr << char
    end
  end

  newstr
end

puts caesar_cypher("Testing...", 10)
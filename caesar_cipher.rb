def caesar_cipher(string, offset)
alphabet = "abcdefghijklmnopqrstuvwxyz".split("");
ciphered_string = []
string.each_char {|char|
  #TODO: check if char is alphabet and check case
  if alphabet.include?(char.downcase)
      newIndex = alphabet.index(char.downcase) + offset
      newIndex -= 26 if newIndex > 25
      puts "this is the offset #{offset}"

      puts "#{newIndex} is the newIndex"
      ciphered_string.push(alphabet[newIndex]) && next if char == char.downcase
      ciphered_string.push(alphabet[newIndex].upcase)
    else
      ciphered_string.push(char)
  end
  #TODO: alphabet wraparound

}

puts ciphered_string.join("")
end


caesar_cipher("abc No z",1)

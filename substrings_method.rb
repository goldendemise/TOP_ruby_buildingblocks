dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  result = Hash.new(0)
  dictionary.each { |word|
result[word] += string.scan(/#{word}/i).count if string.match(/#{word}/i)
  }
  p result
end

substrings("Howdy partner, sit down! How's it going?", dictionary)

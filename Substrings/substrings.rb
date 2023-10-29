dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(str, dict)
  str = str.downcase
  res = {}
  
  ### includes words with no matches
  # dict.each { |word| res[word] = str.scan(word).length } 

  ### excludes words with no matches
#   dict.each do |word|
#     match = str.scan(word).length
#     res[word] = match unless match == 0
#   end

  ### alternate way to exclude words without match
  dict.each { |word| res[word] = str.scan(word).length } 
  res.select! {|word,match| match > 0}

  return res
end

print(substrings("Howdy partner, sit down! How's it going?", dictionary))

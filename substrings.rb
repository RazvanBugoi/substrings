def substrings(string, array)
  output = Hash.new(0)

  array.each do |word|
    regex = /#{word}/i
    if string.match?(regex)
      number_of_matches = string.scan(regex).size
      output[word] += number_of_matches
    end
  end
  output
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)
#=> {"down"=>1, "go"=>1, "going"=>1, "how"=>2, "howdy"=>1, "it"=>2, "i"=>3, "own"=>1, "part"=>1, "partner"=>1, "sit"=>1}

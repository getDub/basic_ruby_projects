# dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
# => ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
# substrings("below", dictionary)
# => { "below" => 1, "low" => 1 }

# substrings("Howdy partner, sit down! How's it going?", dictionary)
# => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
dictionary = %w(below down go going horn how howdy it i low own part partner sit)

def substrings(text, dictionary)
    text.downcase
    result = Hash.new(0)
    dictionary.each do |substring|
        substring.downcase
        occurrences = text.scan(substring).length
        result[substring] += occurrences if text.include?(substring)
end
p result
end

substrings("Howdy partner, sit down! How's it going?", dictionary)

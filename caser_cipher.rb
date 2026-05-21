
def caesar_cipher(string, num)
 split_string = string.chars.map do |letters|
  if letters.match(/[A-Z]/)
    word = letters.ord + num
    word = word + 26 if word < 65
    word = word - 26 if word > 90
  elsif letters.match(/[a-z]/)
    word = letters.ord + num
    word = word + 26 if word < 97
    word = word - 26 if word > 122
  else
   word = letters.ord
end
new_word = word.chr
end

p split_string.join()
end

caesar_cipher("What a String!", 5)
# caesar_cipher("I'm hungry", 13)
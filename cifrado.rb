
alphabet = {"a" => 0, "b" => 1, "c" => 2, "d" => 3, "e" => 4, "f" => 5, "g" => 6, "h" => 7, "i" => 8, "j" => 9,
            "k" => 10, "l" => 11, "m" => 12, "n" => 13, "o" => 14, "p" => 15, "q" => 16, "r" => 17, "s" => 18, "t" => 19,
            "u" => 20, "v" => 21, "w" => 22, "x" => 23, "y" => 24, "z" => 25}

message = "rubyrub"
key = "code"

def getLetterValue (dictionary, word, key)
  wordArray = word.chars.to_a
  keyArray = key.chars.to_a
  ciphered = ''

  (0..wordArray.length()-1).each do |i|
    multi = 0
    if i / keyArray.length() == 0
      letternumber = dictionary.fetch(wordArray[i]) + dictionary.fetch(keyArray[i])
    else
      multi = i/keyArray.length() * keyArray.length()
      letternumber = dictionary.fetch(wordArray[i]) + dictionary.fetch(keyArray[i-multi])
    end
    if letternumber > 25
      letternumber = 0
    end
    ciphered << dictionary.key(letternumber)
  end
  return ciphered
end


messageCiphered = getLetterValue(alphabet, message, key)
puts messageCiphered


VOWELS = ['a','e','i','o','u']

def translate(str)
  words = str.downcase.split
  result = []
  words.each do |word| 
    result << translate_word(word)
  end
  result.join(" ")
end

def translate_word(word)
  if VOWELS.include? word[0]
    return word + 'ay'
  else
    i = index_of_first_vowel(word)
    return word[i..-1] + word[0...i] + 'ay'
  end
end


def index_of_first_vowel(word)
  i = 0
  word.each_char do |ch|
    if ch == 'u' and word[i-1] == 'q'
      i += 1
      next
    end
    return i if VOWELS.include? ch
    i += 1
  end
  return -1
end




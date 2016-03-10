VOWELS = ['a','e','i','o','u']
PUNCT = /[,.!?]/
NOT_PUNCT = /[^,.!?]/

def translate(str)
  words = str.split
  result = []
  words.each do |word| 
    apos_index = get_pig_apos_index(word)
    word = word.delete("'")
    punct = word.gsub(NOT_PUNCT, '')
    pig_word = translate_word(word.gsub(PUNCT, '').downcase)
    pig_word = word[0] == word[0].upcase ? pig_word.capitalize : pig_word
    pig_word.insert(apos_index, "'") unless apos_index.nil?
    result << pig_word + punct.to_s
  end
  result.join(" ")
end

def get_pig_apos_index(word)
  index = word.index("'")
  if index == 0
    return index
  elsif not index.nil?
    index -= index_of_first_vowel(word)
  end
  index
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




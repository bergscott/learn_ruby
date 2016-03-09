require 'set'

LITTLE = ['a','the','over','in','and','or','an','nor','but','at','by','for',
          'of','on','per','to'].to_set

def echo(str)
  str
end

def shout(str)
  str.upcase
end

def repeat(str, times=2)
  result = str
  (times - 1).times do
    result += " " + str
  end
  result
end

def start_of_word(word, n)
  word[0...n]
end

def first_word(str)
  str.partition(" ")[0]
end

def titleize(str)
  words = str.capitalize.split
  words.each {|word| word.capitalize! unless LITTLE.include? word}
  words.join(" ")
end

class Book

  attr_reader :title

  @@conj = ['and','or','but','nor','for','so','yet']
  @@preps = ['of','to','in','as','at','by']
  @@articles = ['a','an','the']
  @@nocaps = @@conj + @@preps + @@articles

  def title=(str)
    words = str.downcase.split
    title_words = [words[0].capitalize]
    words[1..-1].each do |word|
      title_words << (@@nocaps.include?(word) ? word : word.capitalize)
    end
    @title = title_words.join(" ")
  end

end

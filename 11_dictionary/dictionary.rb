class Dictionary
  attr_accessor :entries

  def initialize
    @entries = {}
  end

  def add(entry)
    if entry.class == Hash
      @entries.merge!(entry)
    else
      @entries[entry] = nil
    end
  end

  def keywords
    @entries.keys.sort
  end

  def include?(key)
   @entries.has_key?(key) 
  end

  def find(to_find)
    result = {}
    @entries.each do |key, value|
      if to_find == key[0...to_find.length]
        result[key] = value
      end
    end
    result
  end

  def printable
    result = ''
    keywords.each do |key|
      result += %Q{[#{key}] "#{@entries[key]}"\n}
    end
    result[0...-1]  #removes trailing newline
  end

end

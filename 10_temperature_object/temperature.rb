class Temperature

  def initialize(hash)
    @mode = hash.keys[0]
    if [:c, :celsius].include?(@mode)
      @degrees_fahrenheit = Temperature.ctof(hash.values[0])
    elsif [:f, :fahrenheit].include?(@mode)
      @degrees_fahrenheit = hash.values[0]
    else
      @degrees_fahrenheit = nil
      puts 'Invalid mode hash.'
    end
  end

  def in_fahrenheit
    @degrees_fahrenheit
  end

  def in_celsius
    Temperature.ftoc(@degrees_fahrenheit)
  end

  def Temperature.from_celsius(deg)
    Temperature.new(:c => deg)
  end

  def Temperature.from_fahrenheit(deg)
    Temperature.new(:f => deg)
  end

  def Temperature.ftoc(deg)
    (deg - 32) * 5/9.0
  end

  def Temperature.ctof(deg)
    deg * 9/5.0 + 32
  end

end

class Celsius < Temperature
  
  def initialize(deg)
    super(:c => deg)
  end
  
end

class Fahrenheit < Temperature
  
  def initialize(deg)
    super(:f => deg)
  end

end

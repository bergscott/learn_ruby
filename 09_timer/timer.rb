class Timer

  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    hours = padded(@seconds / 3600)
    minutes = padded((@seconds % 3600) / 60)
    seconds = padded(@seconds % 60)
    "#{hours}:#{minutes}:#{seconds}"
  end

  def padded(int)
    str = int.to_s
    if str.length < 2
      str = "0" + str
    end
    str
  end
  
end

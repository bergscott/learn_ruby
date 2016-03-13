def reverser(&block)
  result = []
  block.call.split.each do |word|
    result << word.reverse
  end
  result.join(" ")
end

def adder(to_add=1, &block)
  block.call + to_add
end

def repeater(times=1, &block)
  times.times {block.call}
end

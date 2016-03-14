class RPNCalculator
  attr_reader :calculator
  
  def initialize
    @calculator = [0]
  end

  def value
    calculator.last
  end

  def push(n)
    calculator << n
  end

  def pop
    raise "calculator is empty" if calculator.empty?
    calculator.pop
  end

  def plus
    push(pop + pop)
  end

  def minus
    subtractor = pop
    push(pop - subtractor)
  end

  def times
    push(pop * pop)
  end

  def divide
    divisor = pop.to_f
    push(pop / divisor)
  end

  def tokens(str)
    str.split.map do |n|
      if ["*","/","+","-"].include?(n)
        n.to_sym
      else
        n.to_i
      end
    end
  end

  def evaluate(str)
    tokens(str).each do |current|
      case current
      when :+
        plus
      when :-
        minus
      when :*
        times
      when :/
        divide
      else
        push(current)
      end
    end
    value
  end
end

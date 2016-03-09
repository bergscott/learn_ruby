def add(x, y)
  x + y
end

def subtract(x, y)
  x - y
end

def sum(array)
  result = 0
  array.each {|n| result += n}
  result
end

def multiply(*args)
  result = 1
  args.each {|n| result *= n}
  result
end

def power(x, y)
  x ** y
end

def factorial(n)
  result = 1
  for x in 2..n do
    result *= x
  end
  result
end

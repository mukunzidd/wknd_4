# In this example, we have THREE calculators, the two included in the previous
# exercises as well as Whiz Bang Calculator that can even calculate the hypotenuse
# of a triangle if given the length of the other two sides. Figure out how to 
# DRY up all the code below - there shouldn't be a single method duplicated between
# any two classes.

module BasicOperations

  def add(first_number, second_number)
    first_number + second_number
  end

  def subtract(first_number, second_number)
    first_number - second_number
  end

  def multiply(first_number, second_number)
    first_number * second_number
  end

  def divide(first_number, second_number)
    first_number / second_number
  end

end

class SimpleCalculator

  include BasicOperations

end

class FancyCalculator

  include BasicOperations

  def square_root(number)
    Math.sqrt(number)
  end

end

class WhizBangCalculator < FancyCalculator

  def hypotenuse(first_number, second_number)
    Math.hypot(first_number, second_number)
  end
  
  def exponent(first_number, exponent_number)
    total = 1
    exponent_number.times { total = multiply(total,first_number) }
    total
  end

end

# Copy your driver code from the previous exercise and more below:

puts "CALCULATOR TESTOR"

whizcalc = WhizBangCalculator.new
fancycalc = FancyCalculator.new
simplecalc = SimpleCalculator.new

puts "TESTING the Whiz Bang Calculator..."
puts

result = whizcalc.add(4,2)

puts "Your method returned:"
puts result
puts

if result == 6
  puts "Addition: PASS!"
else
  puts "F"
end

result = whizcalc.subtract(4,2)

puts "Your method returned:"
puts result
puts

if result == 2
  puts "Subtract: PASS!"
else
  puts "F"
end

result = whizcalc.multiply(4,2)

puts "Your method returned:"
puts result
puts

if result == 8
  puts "Mulitiply: PASS!"
else
  puts "F"
end

result = whizcalc.divide(4,2)

puts "Your method returned:"
puts result
puts

if result == 2
  puts "Divide: PASS!"
else
  puts "F"
end

result = whizcalc.square_root(16)

puts "Your method returned:"
puts result
puts

if result == 4
  puts "Square Root: PASS!"
else
  puts "F"
end

result = whizcalc.hypotenuse(4,3)

puts "Your method returned:"
puts result
puts

if result == 5
  puts "Hypotenuse: PASS!"
else
  puts "F"
end

result = whizcalc.exponent(4,2)

puts "Your method returned:"
puts result
puts

if result == 16
  puts "Exponent: PASS!"
else
  puts "F"
end
puts

puts "TESTING the Fancy Calculator..."
puts

result = fancycalc.divide(4,2)

puts "Your method returned:"
puts result
puts

if result == 2
  puts "Divide: PASS!"
else
  puts "F"
end

result = fancycalc.square_root(16)

puts "Your method returned:"
puts result
puts

if result == 4
  puts "Square Root: PASS!"
else
  puts "F"
end
puts

puts "TESTING the Simple Calculator..."
puts

result = simplecalc.add(4,2)

puts "Your method returned:"
puts result
puts

if result == 6
  puts "Addition: PASS!"
else
  puts "F"
end

result = simplecalc.multiply(4,2)

puts "Your method returned:"
puts result
puts

if result == 8
  puts "Mulitiply: PASS!"
else
  puts "F"
end
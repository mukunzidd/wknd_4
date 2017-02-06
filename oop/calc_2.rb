# In the previous exercise, you were asked to DRY up your code (remove duplicated code)
# by using Inheritance. In this exercise, you must DRY up your code 
# a different technique using Composition. Hint: Google 'Ruby Mixin Module'. (Using
# mixin modules is how you achieve Composition with Ruby.)

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

# Copy your driver code from the previous exercise below:

puts "CALCULATOR TESTORS"

fancycalc = FancyCalculator.new

puts "TESTING the Fancy Calculator..."
puts

result = fancycalc.add(4,2)

puts "Your method returned:"
puts result
puts

if result == 6
  puts "Addition: PASS!"
else
  puts "F"
end

result = fancycalc.subtract(4,2)

puts "Your method returned:"
puts result
puts

if result == 2
  puts "Subtract: PASS!"
else
  puts "F"
end

result = fancycalc.multiply(4,2)

puts "Your method returned:"
puts result
puts

if result == 8
  puts "Mulitiply: PASS!"
else
  puts "F"
end

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

simplecalc = SimpleCalculator.new

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

result = simplecalc.subtract(4,2)

puts "Your method returned:"
puts result
puts

if result == 2
  puts "Subtract: PASS!"
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

result = simplecalc.divide(4,2)

puts "Your method returned:"
puts result
puts

if result == 2
  puts "Divide: PASS!"
else
  puts "F"
end
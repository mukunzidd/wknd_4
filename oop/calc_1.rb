# Below, we have two types of calculators. The simple one can perform basic arithmetic, 
# while the fancy one can also do square roots in addition to basic arithmetic.
# There is nothing wrong with the code below per se, but there is duplication
# between the two classes, since they each contain four identical methods.
# This is generally considered to be a code design flaw, since there may come
# a time where we decide to change how these methods work, and we may accidentally
# update the methods in one class, and forget to update them in the other, and our
# two classes become out of sync. This known as the DRY principle, that is:
# Don't Repeat Yourself.
# There are a number of techniques that we can use to fix this example. One is 
# a fundamental concept in OOP known as Inheritance. Your exercise is to research 
# Inheritance in Ruby, and use it to remove the duplication (or DRY up) the code 
# below. You must also write the driver code to test your classes.

class SimpleCalculator

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

class FancyCalculator < SimpleCalculator

  def square_root(number)
    Math.sqrt(number)
  end

end

# Write your own driver code below:
puts "CALCULATOR TESTORS"

fancycalc = FancyCalculator.new
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
puts

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

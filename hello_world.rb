first_name = 'First Name'
last_name = 'Last Name'
world = 'World'
first_number = 10
second_number = 2.0

puts 'Please Enter First Name'
first_name = gets
puts ''
puts 'Please Enter Last Name'
last_name = gets
puts ''

puts ''
puts 'Here is your Info'
puts first_name
puts last_name
puts first_number
puts second_number

number_array = []
number_array << 1
number_array << 2
number_array << 50
puts number_array[1]
puts number_array[4]

world = gets

def hello(world)
  puts "Hello #{world}"
  puts 'Hello' + ' ' + world
end

hello(world)

puts 'A number to see if it is Odd or Even'
number = gets.to_i

case 
  if number > 0
    1
  else
    2
  end
  when 1
    puts 'You number is great than 0'
  when 2
    puts 'Sorry you can not use 0'
end

def odd_or_even(number)
  if number % 2 == 0
    'Even'
  else
    'Odd'
  end
end

odd_or_even(number)

if odd_or_even(number) == 'Even'
  puts "#{number} is Even"
else
  puts "#{number} is Odd"
end




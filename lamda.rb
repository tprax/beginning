#Blocks, Procs, Lamdas
#blocks are anything in between from a do/end or {}
@arr = [1,2,3,4,5]
#@arr.each do |num|
#  puts num ** 2
#end

array = [1,2,3,4]

#array.each{|num| puts num ** 3}
#square = Proc.new do |num|
#  num ** 2
#end

#@arr.each{|num| puts num ** 4}
square = Proc.new do |num|
  num ** 2
end

#square = Proc.new {|num| num ** 2}
num = square.call(8)
puts num

#procs example
def square_arr(arr, sq)
  arr.each_with_index do |num, i|
    arr[i] = sq.call(arr[i])
  end
  puts arr
end

square_arr(array, square)
#square_arr(@arr, square)

#Lamda
lam = lambda {puts "Hello World"}
lam.call

puts "What is the Cats name?"
name = gets.to_s.strip
puts "What is the Cats color?"
color = gets.to_s.strip
cats = lambda {|name, color| puts "Cats Name: #{name}, Color: #{color}"}
cats.call(name, color)

#Blocks, Procs, Lamdas
#blocks are anything in between from a do/end or {}
arr = [1,2,3,4,5,6,7,8,9,10]
arr.each do |num|
  puts num ** 2
end

#arr.each{|num| puts num ** 2}
square = Proc.new do |num|
  num ** 2
end

#square = Proc.new {|num| num ** 2}
num = square.call(6)
puts num

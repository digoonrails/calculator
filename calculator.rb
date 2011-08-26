input = File.read(ARGV[0])

numbers_to_add = input.split('+').map{ |n| n.to_i }
numbers_to_sub = input.split('-').map{ |n| n.to_i }

if numbers_to_add.size > 1
  print numbers_to_add.inject{ |sum, n | sum + n }
elsif numbers_to_sub.size > 1
  print numbers_to_sub.inject{ |n1, n2| n1 - n2 }
end
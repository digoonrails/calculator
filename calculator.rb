@input = File.read(ARGV[0])
# input = '6-2'

def numbers(operator)
  @input.split(operator.to_s).map{ |n| n.to_i }
end

operator = /\D/.match(@input)
case operator.to_s
when "+"
  print numbers(operator).inject{ |sum, n | sum + n }
when "-"                
  print numbers(operator).inject{ |sum, n | sum - n }
when "/"                
  print numbers(operator).inject{ |n1, n2| n1 / n2 }
else
  print 'not found operator'
end
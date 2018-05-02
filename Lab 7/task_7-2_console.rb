
# Lab №7-2

$LOAD_PATH.unshift('.')
require 'task_7-2.rb'

puts 'Num:'
n = IntNum.new
n.print
n.set_val 25
n.print
puts "get value: #{n.get_val}"
puts "get value length (in digits): #{n.get_val_length}"
puts

puts 'NumStr:'
ns = NumStr.new
ns.print
ns.set_val 25, 'some string'
ns.print
puts "get value: #{ns.get_val}"
puts "get value length: #{ns.get_val_length}"
puts "get number length (in digits): #{ns.get_num_length}"
puts "get string length: #{ns.get_str_length}"
puts

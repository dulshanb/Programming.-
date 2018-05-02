#
# лабораторная работа №6
# часть 3
#
$LOAD_PATH.unshift('.')
require 'task_6-3.rb'

print "enter B: "
b = gets.to_f
puts

puts "f(x) = x * sin(x), |x| < 1, lambda:"
f = ->(x) { x * Math.sin(x) }
puts "M = #{scale(b, f, -1, 1)}"

puts "f(x) = x * sin(x), |x| < 1, block:"
f = Proc.new { |x| x * Math.sin(x) }
puts "M = #{scale(b, f, -1, 1)}"

puts

puts "f(x) = tg(x), |x| < 1, lambda:"
f = ->(x) { Math.tan(x) }
puts "M = #{scale(b, f, -1, 1)}"

puts "f(x) = tg(x), |x| < 1, block:"
f = Proc.new { |x| x * Math.tan(x) }
puts "M = #{scale(b, f, -1, 1)}"

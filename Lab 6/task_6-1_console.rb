#
# лабораторная работа №6
# часть 1
#
$LOAD_PATH.unshift('.')
require 'task_6-1.rb'

puts "xi = 0.01:"
n, y = find_n(0.01)
puts "n = #{n}, y = #{y}"

puts "xi = 0.0001:"
n, y = find_n(0.0001)
puts "n = #{n}, y = #{y}"

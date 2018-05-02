
# Lab №5-1
require 'io/wait'
$LOAD_PATH.unshift('.')
require 'task_5-1.rb'

print "enter x: "
x = gets.to_f

print "enter z: "
z = gets.to_f

y = calculate(x, z)

print "y = "
puts y
sleep 10
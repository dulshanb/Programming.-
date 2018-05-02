
# Lab №7-1

$LOAD_PATH.unshift('.')
require 'task_7-1.rb'

FNAME = 'task_7-1_data.txt'

def get_line
  puts "New Line"
  print "enter x1: "
  x1 = gets.to_f
  print "enter y1: "
  y1 = gets.to_f
  print "enter x2: "
  x2 = gets.to_f
  print "enter y2: "
  y2 = gets.to_f
  puts
  [1,x1,y1,x2,y2]
end

def get_circle
  puts "New Circle"
  print "enter x: "
  x = gets.to_f
  print "enter y: "
  y = gets.to_f
  print "enter r: "
  r = gets.to_f
  puts
  [2,x,y,r]
end

data = []

begin
  puts 'Choose option:'
  puts '1: enter line'
  puts '2: enter circle'
  puts '3: finish'
  opt = gets.to_i
  puts
  if opt == 1
    data << get_line
  elsif opt == 2
    data << get_circle
  elsif opt != 3
    puts '!incorrect option'
    puts
  end
end until opt == 3

puts 'data input completed:'
print data
puts
puts

file_save(FNAME, data)
puts "saved to file: #{FNAME}"
puts

data = file_load(FNAME)
puts "loaded from file: #{FNAME}:"
data.each_with_index do |o, i|
  print "#{i + 1}. "
  if o[0] == 1
    print "line: (#{o[1]},#{o[2]}) - (#{o[3]},#{o[4]})"
  elsif o[0] == 2
    print "circle: (#{o[1]},#{o[2]}), radius = #{o[3]}"
  else
    print "!unknown type"
  end
  puts
end

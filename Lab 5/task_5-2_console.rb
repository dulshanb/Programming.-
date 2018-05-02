
# Lab №5-2

$LOAD_PATH.unshift('.')
require 'task_5-2.rb'

print "Введите число строк: "
str_n = gets.to_i

print "Введите n: "
n = gets.to_i

strs = Array.new
for i in 1..str_n
  puts "Введите строку #{i}, состоящую из латинских букв:"
  strs << gets.chomp.downcase
end

strs_enc = Array.new
strs_enc = strs.map { |s| encrypt_string(n, s) }

puts "Нешифрованные строки:"
strs.each { |s| puts s }
puts "Зашифрованные строки:"
strs_enc.each { |s| puts s }
puts "Дешифрованные строки:"
strs_enc.each { |s| puts decrypt_string(n, s) }

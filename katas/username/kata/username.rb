puts "Enter your name:"

name = gets.chomp

extension = rand(10000..99999)

puts "Your new username is: #{name}_#{extension}"
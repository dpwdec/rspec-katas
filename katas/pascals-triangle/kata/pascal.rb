triangle = []
row = 3

triangle << 1
puts 1
triangle << 1
puts 1
triangle << 1
puts 1

while row < 7 do
  triangle << 1
  puts 1
  new_numbers = row - 2
  (1..new_numbers).each do
    new_number = triangle[(triangle.length-1)-(row-1)] + triangle[(triangle.length-1)-(row-2)]
    triangle << new_number
    puts new_number
  end
  triangle << 1
  puts 1
  row += 1
end

triangle.each do |num|
  #puts num
  #print num
end
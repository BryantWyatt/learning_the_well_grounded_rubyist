numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
puts(numbers.find{|n| n > 5})

numbers_with_nill = [1, 2, 3, nil, 4, 5, 6]
puts(numbers_with_nill.find{|n| n.nil?}) # Will always find nil regards if it succeeds or fails.

puts()
puts('Find all values in the number array greater than 5')
puts(numbers.find_all{|n| n > 5})

puts()
puts('Find all values in the numbers array greater than 100')
puts(numbers.select{|n| n > 100})

colors = %w{red orange yellow green blue indigo violet}
puts()
puts('Locate all colors in the color array with the letter \'o\'')
puts(colors.grep(/o/))

miscellany = [75, 'hello', 10...20, 'goodbye']
puts()
puts('Print all strings in the \'miscellany\' array')
puts(miscellany.grep(String))
puts()
puts('Print all numbers in the \'miscellany\' array')
puts(miscellany.grep(50..100))

puts()
puts('Grep and capitalize each item in the array that has an \'o\'')
puts(colors.grep(/o/) {|color| color.capitalize})

puts()
puts('Group by example:')
puts(colors.group_by{|color| color.size})


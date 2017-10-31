r = Range.new(1,10)

puts(r.one? {|n| n == 5})
puts(r.none? {|n| n % 2 == 0})



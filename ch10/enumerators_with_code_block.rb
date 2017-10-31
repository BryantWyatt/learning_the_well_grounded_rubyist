numbers = [1, 2, 3, 4, 5]

e1 = Enumerator.new do |y|
  puts('Starting up the block')
  (1..3).each { |i| y << i}
  puts('Exiting the block!')
end

p(e1.to_a)
p(e1.select { |x| x > 2})

e2 = Enumerator.new do |y|
  total = 0
  until numbers.empty?
    total += numbers.pop
    y << total
  end
end

puts()
p(numbers)
p(e2.take(2))
p(numbers)
p(e2.to_a)
p(numbers)
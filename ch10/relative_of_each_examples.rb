pres_names = ['George Washington', 'John Adams', 'Thomas Jefferson', 'James Madison']
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

puts("'each_with_index' example")
pres_names.each_with_index do |pres, i|
  puts("#{i+1}. #{pres}")
end
puts("'each.with_index' example")
pres_names.each.with_index do |pres, i|
  puts("#{i+1}. #{pres}")
end

puts("example with '.slice'")
numbers.each_slice(3) {|slice| p slice }
puts("example with '.cons' (cons = collection)")
numbers.each_cons(3) {|slice| p slice }


require_relative 'stacklike'

class Stack
  include Stacklike
end

s = Stack.new
s.add_to_stack('item_one')
s.add_to_stack('item__two')
s.add_to_stack('item_three')

puts('Objects currently on the stack:')
puts(s.stack)
taken = s.take_from_stack
puts('Remove this object:')
puts(taken)
puts('Now on stack:')
puts s.stack
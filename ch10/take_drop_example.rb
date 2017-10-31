states = %w( NJ NY CT MA VT FL)
puts('Original states array')
puts(states)
puts('Take 2 example')
puts(states.take(2))
puts('Drop 2 example')
puts(states.drop(2))
puts()
puts('.take_while example')
puts(states.take_while { |s| /N/.match(s)})
puts('.drop_while example')
puts(states.drop_while { |s| /N/.match(s)})



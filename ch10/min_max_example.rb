#TODO: Look into min, min_by, minmax, minmax_by

numbers = [1, 3, 5, 4, 2]
languages = %w{ Ruby C APL Perl Smalltalk}
state_hash = {'New York' => 'NY', 'Maine' => 'MA', 'Alaska' => 'AK', 'Alabama' => 'AL'}

puts("Max number in 'numbers' array")
puts(numbers.max)
puts("Min value in 'languages array' with .min")
puts(languages.min)
puts("Min value in 'language array' with comparable")
puts( numbers.min { |a,b| a.size <=> b.size} )
puts("Min value in 'language array' with min_by")
puts(numbers.min_by {|lang| lang.size})
puts("Min/Max value in 'language array' utilizing .minmax")
puts(numbers.minmax)
puts("Min/Max value in 'language array' utilizing .minmax_by")
puts(numbers.minmax_by {|lang| lang.size})

puts("state hash'.min'")
puts(state_hash.min)
puts("state hash '.min_by' with 'key'")
puts(state_hash.min_by { |name, abbr| name})
puts("state hash '.min_by' with 'value'")
puts(state_hash.min_by { |name, abbr| abbr})

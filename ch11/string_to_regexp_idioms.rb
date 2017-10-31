str1 = 'a.c'
str2 = 'abc'
name = 'Mr. David Black'
re = /#{Regexp.escape(str1)}/

puts(re.match(str1).inspect)
puts(re.match(str2).inspect)

puts('Escaping literal character spaces')
puts(Regexp.new(name).inspect)
puts(Regexp.new(Regexp.escape(name)).inspect)


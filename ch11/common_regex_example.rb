example = %q{testing 1 2 3 testing 4 5 6}
line = 'first_name=david;last_name=black;country=usa'

puts('Find all digits via a scan using regex')
print(example.scan(/\d/))

puts('String split')
print(line.split(/=|;/))
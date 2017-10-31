letters = 'abc'
name = 'David A. Black'

puts('Complicated capture example')
puts(/((a)((b)c))/.match(letters).inspect)

re = /(?<first>\w+)\s+((?<middle>\w\.)\s+)?(?<last>\w+)/
m = re.match(name)
puts('Name Capture example')
puts(m.inspect)


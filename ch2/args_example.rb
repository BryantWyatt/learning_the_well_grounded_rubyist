obj = Object.new

def obj.multi_arg(*x)
  puts 'I can take zero or more arguments'
end

def two_or_more(a, b, *c)
  puts 'I require two or more arguments'
  puts 'And sure enough I got: '
  puts(a, b, c)
end

def default_args(a, b, c = 1)
  puts 'Values of variables:'
  puts a, b, c
end

def mixed_args(a, b, *c, d)
  puts 'Arguments:'
  puts a, b, c
end

def args_unleashed(a, b = 1, *c, d, e)
  puts 'Arguments:'
  puts a, b, c, d, e
end



two_or_more(1, 2, 3)
two_or_more(1, 2, 3, 4, 5)
default_args(3, 2)
default_args(4, 5, 6)
mixed_args(1, 2, 3)
args_unleashed(1, 2, 3, 4, 5, 6, 7, 8)


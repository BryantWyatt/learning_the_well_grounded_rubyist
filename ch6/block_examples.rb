def block_args_unleashed
  yield(1, 2, 3, 4, 5)
end

def block_scope_demo
  x = 100
  1.times do
    puts(x)
  end
end

def block_scope_demo_2
  x = 100
  1.times do
    x = 200
  end
  puts x
end

def block_local_parameter
  x = 100
  [1, 2, 3].each do |x|
    puts("Parameter x is #{x}")
    x += 10
    puts("Reassigned to x in block; its's now #{x}")
  end
  puts("Outer x is still #{x}")
end

def block_local_variable
  x = "Original x!"
  3.times do |i;x|
    x = i
    puts("x in the block is now #{x}")
  end
  puts("x after the block ended is #{x}")
end

block_args_unleashed do |a,b=1, *c, d, e|
  puts('Arguments:')
  p(a, b, c, d, e)
end

block_scope_demo
block_scope_demo_2
block_local_parameter
block_local_variable

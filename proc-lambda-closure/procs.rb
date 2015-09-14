#!/usr/bin/ruby

# proc passed as arg to method (block of code)

def boom(n, &b)
  i = 0
  while i < n
    # this is the block passed the cal runs the block
    b.call("Boom #{i}")
    i += 1
  end
end

# calles the boom method with first arg of 20 (n) and second as block
boom(20) do |x|
  puts x
end

# if you wanna use as arg specifically could do something like this
def boom(a, b, p)
  p.call(a, b)
end

# this is a silly example but still :D
p = Proc.new {|a, b| puts a; puts b;}
boom('one', 'two', p)

# you can also, and most likely pass args as a hash then have a proc or even
# use the splat symbol for the rest of the args, followed by a proc
def loom(count, *rest, &b)
  i = 0
  while i < count
    b.call(rest[i])
    i += 1
  end
end

puts '================ Example using splat, first and pric arg ==========='
loom(3, 'a', 'b', 'c') do |x|
  puts x
end

# using hash

def floom(args, &b)
  start = args[:start]
  stop = args[:stop]
  while start <= stop
    b.call(start)
    start += 1
  end
end

puts '================= Example using hash ==============='
floom({start:10, stop:15}) do |x|
  puts x
end

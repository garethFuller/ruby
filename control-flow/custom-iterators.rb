#!/user/bin/ruby

# this is a custom iterator to add the values of a and b passed
# together for each instance, n is the amount of iterations
def subSum(n, a, b)
  i = 0
  while i < n
    yield a[i] + b[i]
    i += 1
  end
end

a = [1,2,3,4]
b = [1,2,3,4]

# obvs this is a shit method as it depends on both args being the
# same size but its cool for a demo
subSum(a.size, a, b) do |x|
  # put the yielded value
  puts x
end


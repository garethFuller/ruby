#!/usr/bin/ruby

# Compute f(x) but only if x and f are defined
y = f(x) if defined? f(x)

# it will return false or nil if not defined else it will return a string
# the string could be things like 'local-variable' and 'false'

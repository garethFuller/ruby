#!/usr/bin/ruby

# example of executing system commands
puts `ls -la`

# can also be achieved by using %x for execute
puts %x/pwd/
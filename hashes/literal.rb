#!/usr/bin/ruby

hash = {'one' => 1, 'two' => 2}

puts hash.inspect

# in general symbols work more efficiently than string keys for hashes
hash = {:one => 1, :two => 2}

puts hash.inspect

# cleaner way more like js of writting it, it is the same as previous example
hash = {one:1, two:2}
puts hash.inspect

#!/usr/bin/ruby

gareth = 'SOME VAL'
# here docs are a nice way of defining multi line strings
string = <<EODOC
This is a very nice long string with some
interpolated values in like this one #{gareth}
and then it stops
EODOC

puts string

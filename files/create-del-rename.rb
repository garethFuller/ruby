#!/usr/bin/ruby

# to create, just open. if it does not exist will create
# a to append w to write just like normal
File.open('some-text.txt', 'a')

# to rename
File.rename('some-text.txt', 'something-new.txt')

#sym link
File.symlink('something-new.txt', 'some-link.txt') # hard link is just link

# delete
File.delete('some-link.txt')


# to remove multiple named files
# File.unlink('name')

# set everything back to how it was :D
File.rename('something-new.txt', 'some-text.txt')
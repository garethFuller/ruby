#!/usr/bin/ruby

# just some usefull file methods

# check if files are the same
File.identical?('/usr/g/some-file.txt', 'some-text.txt')

# check fo file name matches
File.fnmatch('*.rb', 'some-file.rb') # true
# third arg to fnmatch is flags like match hidden files (File::FNM_DOTMATCH) and
# preventing * from matching / (File::FNM_PATHNAME)

f = './some-text.txt'

#some methods
puts '-- exists? --'
puts File.exists? f
puts '-- file? --'
puts File.file? f
puts '-- directory? --'
puts File.directory? f
puts '-- symlink? --'
puts File.symlink? f

# size methods
puts '-- size --'
puts File.size f
puts '-- zero? --'
puts File.zero? f # true if empty

# permissions
puts '-- readable? --'
puts File.readable? f
puts '-- writable? --'
puts File.writable? f
puts '-- executable? --'
puts File.executable? f
puts '-- world read? --'
puts File.world_readable? f
puts '-- world write? --'
puts File.world_writable? f

# dates / times
puts '-- created at --'
puts File.mtime f
puts '-- last accessed at --'
puts File.atime f

# more efficinent to call File::Stat to get this sort of information, bare in
# mind has the same functions for things like readable writable, size, etc
s = File.stat('./some-text.txt')
s.file? # and so on

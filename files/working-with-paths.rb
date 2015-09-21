#!/usr/bin/ruby

full = '/home/matz/bin/ruby.exe'
file=File.basename(full) # => 'ruby.exe': just the local filename
File.basename(full,'.exe') #=>'ruby':withextensionstripped
dir=File.dirname(full) # => '/home/matz/bin': no / at end
File.dirname(file) # => '.': current directory
File.split(full) # => ['/home/matz/bin', 'ruby.exe']
File.extname(full) # => '.exe'
File.extname(file) # => '.exe'
File.extname(dir) # => ''
File.join('home','matz') # => 'home/matz': relative
File.join('','home','matz') #=>'/home/matz':absolute

# convert relative path to absolute
File.expand_path("~gareth/things") # => "/home/gareth/things"

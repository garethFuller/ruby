#!/usr/bin/ruby

# get all files in dir
things = Dir.entries('./')
puts '-------- Files in this directory --------'
Dir.foreach('./') do |file|
  puts file
end

textFiles = Dir['./*.txt']
puts '--------- Text files --------'
puts textFiles

# glob gives us iterable block and can select hidden files
puts '------- Glob dir ----------'
Dir.glob('*', File::FNM_DOTMATCH) do |f|
  puts f
end

# working directory
puts '------- current dir --------'
puts Dir.getwd
Dir.chdir('../../') # no args sets as home dir
puts '--------- changed wd -------'
puts Dir.getwd

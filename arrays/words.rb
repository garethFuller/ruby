#!/usr/bin/ruby

words = %w[these are some words]
# same as ['these', 'are' ...]
puts words

specialWords = %W(\n \t \s double quote!)
# same as ["\n", ...]

puts specialWords

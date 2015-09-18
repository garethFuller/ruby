#!/usr/bin/ruby

# starts with capital letter
# can use constants + class variables
module GarethNumber
  # can also be GarethNumber.down
  def self.down(n)
    n - 1
  end
  def self.up(n)
    n + 1
  end

  class NestedClass
    def yo
      puts 'yo'
    end
  end
end

puts GarethNumber.down(2)

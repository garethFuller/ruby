#!/usr/bin/ruby

# Abstract class deinfes things that need to be implemented by the 'concrete' sub class
class Abstract
  def greet
    puts "#{greeting} #{who}"
  end
end

# concrete class implements things needed defined by the abstract class
# it is classed as concrete when it implements all of the required structure
class Concrete < Abstract
  def greeting
    "Hello"
  end
  def who
    "world"
  end
end

# boom shackalaka!
Concrete.new.greet

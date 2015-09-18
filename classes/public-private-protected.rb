#!/usr/bin/ruby

# How they work in Ruby
#
# Public
# open to all, standard
#
# Private
# open to only instance of the class intetrnaly, must be called in functional style
# so no o.method or method.self etc
#
# Protected
# Like private but instances of the same class (or sub class) can call eachothers protected methods

# can be set like this
class Thing
  # public methods go here

  # The following methods are protected
  protected
  # protected methods go here

  # The following methods are private
  private
  # private methods go here
end

# can be set like this
class Thing
  @@b = 'should not see me'
  @@a = 'instances should only see me'

  def a
    puts @@a
  end
  protected :a

  def b
    puts @@b
  end
  private :b
end

# unfortunatly, you can still access it :D
a = Thing.new
a.send :b
a.instance_eval { b }

# this would fail, so we know its private
#a.public_send :b

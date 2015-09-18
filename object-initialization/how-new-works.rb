#!/usr/bin/ruby

# what the new def would look like
def new(*args)
  o = self.allocate # create a new object of this class
  o.initialize(*args) # call the objects initialize method with args passed
  o # rerurnt he object
end

# all classes have an allocate method, instance method, create a new instance
# of the class, dont try override
#
# initialize is instance method every class that extends something other than Object
# should also call super so the chain of initialize gets called, it is private so you
# cannot invoke like initialize.initialize etc etc

#!/usr/bin/ruby

a = {gareth:'rocks', andWears:'socks'}

# both of these are only shalow copies, and only copy over refs to member objects
# if you want to do a deep copy you need to create a initialize_copy method on
# the object class and run it. in this class you need your own logic to to copy
# over what you want ... so far so lame :(

b = a.clone # this one also copies over singleton methods on the object, dup does not
puts b.inspect
c = a.dup
puts c.inspect

# Marshalling is a way of saving and loading the state of an obj but you can also
# use it to copy over a deep copy of an obj

d = Marshal.load(Marshal.dump(a))
puts d.inspect
# YAML is also more used than marshal, look into this

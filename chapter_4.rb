# Object-Oriented Applications are made up of classes but defined by messages.
# Design must be concerned with the messages that pass between objects.
# Conversations between objects takes place using their interfaces.

# Good applications are made of plug-able, component-like objects. 
# Each reveals as little about itself, and knows as little about others as possible.
# Applications become cumbersome because they are too revealing.
# Cumbersome applications have large public interfaces. Interface being the literal verb.

# Rules for the Public Interfaces of Classes:
# - Reveal its primary responsibility
# - Are expected to be invoked by others
# - Will not change on a whim
# - Are safe for others to depend on
# - Are thoroughly documented in the tests

# Rules for the Private Interfaces of Classes:
# - Handle implementation details
# - Are not expected to be sent to other objects
# - Can change for any reason whatsoever
# - Are unsafe for others to depend on
# - May not even be referenced in the tests

# Public parts are stable; private parts are changeable



# Constructing Intent
# Classes will often spring to mind because they represent nouns in the application
# that have both data and behavior. These are domain objects. They are obvious
# because they are presistent; they stand for big, visible real-world things that
# will end up with a representation in your database. Don't fixate on them.
# Before you start typing you should form an intention about the objects and the
# messages needed to satisfy this use case.
# One should be focused on message-based design instead of class-based design
# That is, focus on the messages (what needs to be sent, where it need to be sent to)
# then design classes around that.
# Your application is defined by its interfaces - think about them carefully.

# Every time you create a class, declare its interfaces.
# Methods in the public interface should...
# - be explicitly identified as such
# - be more about what than how
# - have names that, insofar as you can anticipate, will not change
# - take a hash as an options parameter

# Private - most unstable & least visible
# Protected - unstable & more visible
# Public - stable & completely visible

# When working with private interfaces, exercise caution and minimize
# context. 


# The Law of Demeter
# Is a set of coding rules that results in loosely coupled objects.
# Demeter restricts the set of objects to which a method may send
# messages; it prohibits routing a message to a third object via
# a second object of a different type. 
# "Only talk to your immediate neighbors" or "use only one dot"
# Evalute a chain by counting the dots, but if the objects return
# the same type, Demeter may not be violated.
# Delegation is a possible solution, but is far from ideal. 

# Summary:
# Message passing takes place along "public" interfaces; well defined
# public interfaces consist of stable methods that expose the
# responsibilities of their underlying classes and provide maximal
# benefit at minimal cost.


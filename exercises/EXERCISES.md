Exercises
=========

Exercise 0
----------

In this exercise we have an unnecessary conditional in the constructor. The
simplest way to remove the conditional is to use the `||` Ruby language construct.

```ruby
def initialize(list)
  @list = list || []
end
```

Exercise 1
----------

The challenge in this exercise is to avoid checking for nil on item attributes.
There are several ways to make the specs pass. Perhaps the most obvious is to
set defaults on the various attributes. But if requirements point us in a
different direction, introducing a null object may be the best option.

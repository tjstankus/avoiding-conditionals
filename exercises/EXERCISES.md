Exercises
=========

Exercise 0: Groceries
---------------------

In this exercise we have an unnecessary conditional in the constructor. The
simplest way to remove the conditional is to use the `||` Ruby language construct.

```ruby
def initialize(list)
  @list = list || []
end
```

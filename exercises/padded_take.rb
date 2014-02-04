# first is aliased to take
arr = [1,2,3,4,5]
arr.take(2) # => [1,2]

# if n is > number of elements in the array, pad the remaining space
# in the resulting array with zeros
def padded_take(arr, n)
  if n <= arr.length
    arr.take(n)
  else
    arr + [0] * (n - arr.length)
  end
end

puts padded_take(arr, 8).inspect

# Exercise: refactor to remove the conditional from padded_take


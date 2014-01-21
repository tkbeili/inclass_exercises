# Write a method that takes an array as an argument and 
# returns another array with all elements that are greater 10 and 
# doesn’t fail if you pass in non-numbers

my_array = [1, 2, 4, 11, 14, 'asdf', false, nil]

# Solution 1
def give_my_greater_than_ten(array= [])
  new_array = []
  array.each do |x|
    if x.is_a?(Numeric) && x > 10
      new_array << x
    end
  end
  new_array
end

give_my_greater_than_ten(my_array)

# Solution 2
def give_my_greater_than_ten(array= [])
  array.select {|x| x.is_a?(Numeric) && x > 10 }
end


# Solution 3
def give_my_greater_than_ten(array= [])
  array.dup.delete_if {|x| !x.is_a?(Numeric) || x <= 10 }
end

give_my_greater_than_ten(my_array)
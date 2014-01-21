# Write some code that takes an array and returns another 
# array with each element multiplied by itself if it's numeric

my_array = [1, 2, "sdf", false, 10.0, 13]

def power_of_two(array)
  new_array = array.select {|x| x.is_a?(Numeric)  }
  new_array.map {|x| x * x }
end

power_of_two my_array # [1, 4, 100.0, 169]

# Solution 2
def power_of_two(array = [])
  new_array = []
  array.each {|x| new_array << x * x if x.is_a?(Numeric) }
  new_array
end

power_of_two my_array # [1, 4, 100.0, 169]

# solution 3
def power_of_two(array)
  array.select {|x| x.is_a?(Numeric)  }.map {|x| x * x }
end


power_of_two my_array # [1, 4, 100.0, 169]
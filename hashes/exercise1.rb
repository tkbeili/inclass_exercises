# Write a code that takes a hash and generates 
# another hash with the key/value pairs swapped without using .invert

hash = {a: 1, b: 2, c: 3, d: "fasdf"}

new_hash = {}
hash.each_pair {|key,value| new_hash[value] = key }
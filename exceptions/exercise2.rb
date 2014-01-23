# Write a custom exception class that inherits 
# from StandardError then write a method that 
# raises an exception from that class and 
# captures it.

class NumberCheckerError < StandardError
end

def double(value)
  if value.is_a? Numeric
    value * value
  else
    raise NumberCheckerError, "My be Number"
  end
end

def call_me(value)
  p double value
rescue NumberCheckerError
  p "Must be a Number"
rescue Exception 
  p "Unknown Error"
end

call_me 5
call_me 0
call_me "asdfa"







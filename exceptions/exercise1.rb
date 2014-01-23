# Write a method that captures a TypeError 
# Exception

def catch_typer(value)
  1 + value
rescue TypeError => e
  puts "You must provide a number"
  puts "message is #{e.backtrace_locations}"
end
def divide_me(divide_by)
  begin
    1 / divide_by
  rescue ZeroDivisionError
    puts "Can't divide by Zero"
  rescue Exception => ex
    puts ex.inspect
    puts "Exception happened #{ex.message}"
    puts "backtrace is #{ex.backtrace}"
  end
end


def divide_me(divide_by)
  1 / divide_by
rescue ZeroDivisionError
  puts "Can't divide by Zero"
rescue Exception
  puts "Error happened"
end
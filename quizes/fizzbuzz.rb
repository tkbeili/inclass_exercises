(1..100).each do |x|
  if (x%3 == 0) && (x%5 == 0)
    puts "FizzBuzz"
  elsif x%5 == 0
    puts "Buzz"
  elsif x%3 == 0
    puts "Fizz"
  else
    puts x
  end
end

(1..100).each do |x|
  y = ""
  y += "Fizz" if x%3 == 0
  y += "Buzz" if x%5 == 0
  puts y.empty? ?  x : y
end

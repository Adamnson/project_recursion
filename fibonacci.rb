def fibonacci(number)
  if number < 2
    return number
  end

  fibonacci(number -1) + fibonacci(number -2)
end

12.times do |i|
  puts fibonacci(i)
end

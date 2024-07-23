def fib_rec(number)
  if number < 2
    return number
  end

  fib_rec(number -1) + fib_rec(number -2)
end

12.times do |i|
  puts fib_rec(i)
end

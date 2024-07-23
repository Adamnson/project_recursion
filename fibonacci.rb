def fib_rec(number)
  if number < 2
    return number
  end

  fib_rec(number - 1) + fib_rec(number - 2)
end

12.times do |i|
  p fib_rec(i)
end


def fib(n)
  if n < 2
    return n
  end
  fib_arr = [0, 1]
  n.times do
    fib_arr.push(fib_arr.last + fib_arr[-2] )
  end
  fib_arr
end

12.times do |i|
  p fib(i)
end
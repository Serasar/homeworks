def task_4_1(number)
end

def fib(n, sequence=[1])
  n = n - 1
  n.times do
    current_number, last_number = sequence.last(2)
    sequence << current_number + (last_number or 0)
  end
  sequence
end

puts fib(5)
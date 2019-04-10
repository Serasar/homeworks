def task_4_1(number, sequence = [1])
  return [] if number > 1000
  return [0] if number.zero?

  number -= 1
  number.times do
    current_number, last_number = sequence.last(2)
    sequence << current_number + (last_number || 0)
  end
  sequence
end

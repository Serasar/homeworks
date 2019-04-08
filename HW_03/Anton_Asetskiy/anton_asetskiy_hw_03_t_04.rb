def task_4(input_string)
  number_array = []
  input_string.each_char do |char|
    number_array.push(char.to_i)
  end
  number_array.sum
end

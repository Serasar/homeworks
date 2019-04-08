def task_1(input_string)
  input_string.each_line do |line|
    return line if line.downcase.include? 'error'
  end
  ''
end

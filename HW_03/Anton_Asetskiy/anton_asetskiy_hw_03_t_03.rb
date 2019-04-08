require 'time'

def task_3(input_string)
  array_valid_lines = []
  input_string.each_line do |line|
    array_valid_lines.push(line) if line.include? 'Calling core with action'
  end
  if array_valid_lines.length >= 2
    (Time.parse(array_valid_lines[-1]) - Time.parse(array_valid_lines[0])).abs.to_s
  else
    '0'
  end
end

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

ts = %q(
2018-04-23 17:17:49.7 ubuntu-xenial[14319] Debug - Calling core with action: event
2018-04-23 17:17:49.7 ubuntu-xenial[14319] Debug - connecting to: 10.6.246.101
2018-04-23 17:17:49.8 ubuntu-xenial[14319] Debug - docker event processed
2018-04-23 17:18:19.5 ubuntu-xenial[14319] Debug - monitoring grid communication health
2018-04-23 17:18:38.8 ubuntu-xenial[14319] Debug - Calling core with action: messages
2018-04-23 17:18:38.8 ubuntu-xenial[14319] Debug - connecting to: 10.6.246.101
2018-04-23 17:18:59.8 ubuntu-xenial[14319] Debug - inside docker_handle_event

  )

puts task_3(ts)
def get_ip(input_string)
  input_string[/^.* - -./]
end

def get_date(input_string)
  input_string[/[\[].*[\]]/]
end

def get_address(input_string)
  input_string[/T .* H/]
end

def validate(input_string)
  input_string if get_ip(input_string) && get_date(input_string) && get_address(input_string)
end

def task_2(input_string)
  result = []
  input_string.each_line do |line|
    if validate(line)
      date = get_date(line)
      ip = get_ip(line)
      address = get_address(line)
      result.push(date[1..-2] + ' FROM: ' + ip[0..-5] + 'TO:' + address[1..-3].upcase)
    end
  end
  result
end

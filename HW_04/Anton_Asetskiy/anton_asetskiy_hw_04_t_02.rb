require 'yaml'

def task_4_2(input_string)
  output_array = []
  YAML.safe_load(input_string).each do |k, v|
    temp_hash = {}
    temp_hash[k] = { db: v['database'] }
    temp_hash[k][:user] = v['username'] unless v['username'].nil?
    temp_hash[k][:password] = v['password'] unless v['password'].nil?
    temp_hash[k][:magic_number] = v['pool'].to_i * v['timeout'].to_i
    output_array.push(temp_hash)
  end
  output_array
end

file_to_test = ARGV[0]
puts "We are testing '#{file_to_test}'"

input_file = ARGV[1]
result = `cat #{input_file} | ruby #{file_to_test}`
puts "Actual Result:"
puts result

expected_result_file = ARGV[2]
expected_result = File.read(expected_result_file)
puts "Expected Result:"
puts expected_result

if result == expected_result
  puts "PASSED"
else
  puts "FAILED"
end

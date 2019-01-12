FILE_NAME = 'counter.txt'

def increment_file_counter
  counter = nil

  counter = File.read(FILE_NAME)

  File.write(FILE_NAME, counter.to_i + 1) if counter
end

5.times do
  increment_file_counter

  new_counter_value = `cat counter.txt`
  puts "The new counter value is #{new_counter_value}"
  `git add counter.txt`
  `git commit -m "Updated counter to #{new_counter_value}"`
end



names = []

5.times do
  name = gets
  names << name
end

names.each do |name|
  puts name.capitalize!
end

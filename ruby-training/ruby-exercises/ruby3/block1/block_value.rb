# frozen_string_literal: true

value1 = 10
5.times do |value1|
  puts "value_1 inside the block #{value1}"
end
puts "value_1 outside the block #{value1}"

value1 = 10
5.times do |value2|
  value1 = value2
  puts "value_1 inside the block: #{value1}"
end
puts "value outside the block #{value1}"

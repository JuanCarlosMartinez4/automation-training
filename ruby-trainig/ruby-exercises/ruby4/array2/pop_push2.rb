# frozen_string_literal: true

alpha = %w[a b c d e f]
puts 'pop element=' + alpha.pop
puts alpha.inspect

alpha = %w[a b c]
alpha.push('x', 'y', 'z')
puts alpha.inspect

alpha = %w[a b c d e f]
puts 'shift element=' + alpha.shift
p alpha

alpha = %w[a b c]
puts "unshift element= 'x', 'y', 'z'"
alpha.unshift('x', 'y', 'z')
p alpha

$:.unshift "lib"

require 'parallel2'

list = [1, 10, 2, 9, 3, 8, 4, 7, 5, 6]

Parallel.each(list) do |i|
  sleep i
  puts "#{i} fired!"
end

data = Parallel.map(list) do |i|
  sleep i
  puts "#{i} fired!"
  i
end

p data

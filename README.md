Parrallel2
----------

Parallel#each and Parallel#map are using Celluloid::Future

```ruby

require 'parallel2'

list = [1,10,2,9,3,8,4,7,5,6]
Parallel.each(list) do
  sleep i
  puts "#{i} fired!"
end

results = Parallel.map(list) do
  sleep i
  puts "#{i} fired!"
  i * 2
end

```

def count_incr(start, inc)
  start -= inc
  lambda { start += inc }
end

counter = count_incr(10,3)

puts counter.call
puts counter.call
puts counter.call
puts counter.call

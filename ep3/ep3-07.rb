def n_times(n)
  lambda {|val| n * val }
end

two_times = n_times(2)
p two_times.call(3)

puts eval("n", two_times)



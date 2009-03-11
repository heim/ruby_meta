def method
  puts "top of method"
  [1,2].each do |val|
    puts val
    return if val > 2
  end
  puts "end of method"
end

puts "before call"
method
puts "after call"

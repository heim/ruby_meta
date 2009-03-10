def method
  puts "at top"
  
  
  #pr = Proc.new { return }
  pr = lambda { return }
  pr.call
  
  puts "at end"
end

puts "before call"
method
puts "after call"

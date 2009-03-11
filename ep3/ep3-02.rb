l = lambda { |a| a + 1 }

puts l.call(99)


l = Proc.new { |a| a + 1 }

puts l.call(99)

def convert(&block)
  block
end

l = convert { |a| a + 1 }

puts l.call(99)


#DEPRECATED
l = proc { |a| a + 1 }

puts l.call(99)




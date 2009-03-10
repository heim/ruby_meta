l = Proc.new { |a,b,c| p a,b,c}

l.call(1,2,3)
l.call(1,2)
l.call(1,2,3,4)


l = lambda { |a,b,*c| p a,b,c}

l.call(1,2,3)
l.call(1,2)
l.call(1,2,3,4)

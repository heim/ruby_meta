class Turtle
  def initialize
    @path = []
  end

  def right(n=1)
    @path << "r"*n
  end

  def up(n=1)
    @path << "u"*n
  end

  def path
    @path.join
  end
  
  def move(arg1, arg2, &block)
    instance_eval(&block)
  end
end



t = Turtle.new
t.right(3)
t.up(2)
t.right(1)
puts t.path

t = Turtle.new
@count = 4
val1 = 15
val2 = 2
t.move(val1, val2) do
  right(val1)
  up(1)
  right(1)
end

puts t.path

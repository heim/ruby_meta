class Thing
  def initialize
    @var = 99
  end
end


t = Thing.new

class Other
  def method1(thing)
    thing.instance_eval do
      puts @var
      method2
    end
  end
  def method2
  end
  
end

obj = Other.new
obj.method1(t)

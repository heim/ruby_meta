class Thing
  def initialize
    @var = 123
  end
  
  private
  
  def secret
    puts "I like mordi"
  end
end

t = Thing.new
puts t.instance_eval { secret }
puts t.instance_eval { @var }

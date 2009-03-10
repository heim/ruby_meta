class Discounter
  
  def initialize
    @memory = {}
  end

  def discount(*skus)
    if @memory.has_key?(skus)
      @memory[skus]
    else
     @memory[skus] = expensive_discount_calculation(*skus)
   end
  end
  
  private
  
  def expensive_discount_calculation(*skus)
    puts "Expensive calculation for #{skus.inspect}"
    skus.inject { |m,n| m + n }
  end
end



d = Discounter.new
puts d.discount(1,2,3)
puts d.discount(1,2,3)
puts d.discount(2,3,4)
puts d.discount(2,3,4)

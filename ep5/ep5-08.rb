module Memoize
  def remember(name)
    original_method = instance_method(name)
    memory = {}
    define_method(name) do |*args|
      if memory.has_key?(args)
        memory[args]
      else
        bound_method = original_method.bind(self)
        memory[args] = bound_method.call(*args)
      end
    end
  end
end

class Discounter
  extend Memoize

  def discount(*skus)
    expensive_discount_calculation(*skus)
  end
  remember :discount
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

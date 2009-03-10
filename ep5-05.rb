class Discounter
  def discount(*skus)
    expensive_discount_calculation(*skus)
  end
  private
  def expensive_discount_calculation(*skus)
    puts "Expensive calculation for #{skus.inspect}"
    skus.inject { |m,n| m + n }
  end
end

def memoize(obj, method)
  ghost = class << obj; self; end
  ghost.class_eval do
    memory ||= {}
    define_method(method) do |*args|
      if memory.has_key?(args)
        memory[args]
      else
        memory[args] = super
      end
    end
  end
end

d = Discounter.new
memoize(d, :discount)

puts d.discount(1,2,3)
puts d.discount(1,2,3)
puts d.discount(2,3,4)
puts d.discount(2,3,4)


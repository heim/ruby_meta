class Multiplier

  def self.create_multiplier(n)
    define_method("times_#{n}") do |val|
      val * n
    end
  end

 100.times { |i| create_multiplier(i) }
end

m = Multiplier.new

puts m.times_2(3)
puts m.times_3(3)
puts m.times_99(3)


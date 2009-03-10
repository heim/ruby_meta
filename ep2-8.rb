module Math
  def self.is_even?(num)
    (num & 1) == 0
  end
end

puts Math.is_even?(1)
puts Math.is_even?(2)

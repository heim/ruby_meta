class ShippingOption
  @children = []
  def self.inherited(child)
    @children << child
  end
  def self.for(weight, international)
    @children.select do |child| 
      child.can_ship?(weight, international)
    end
  end
end


class MediaMail < ShippingOption
  def self.can_ship?(weight, international)
    !international
  end
end

class PriorityFlatRate < ShippingOption
  def self.can_ship?(weight, international)
    !international && weight < 4*16
  end
end

puts ShippingOption.for(5*16, false)
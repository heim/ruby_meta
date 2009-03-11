class Parent
  def self.inherited(klass)
    puts "#{self} was inherited by #{klass}"
  end
end

class Child < Parent
  
end


class OtherChild < Parent
  
end
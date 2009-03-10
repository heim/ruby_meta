class Module
  def included(*modules)
    modules.reverse_each do |mod|
      mod.append_self(self)
    end
  end
end

class SomeClass
  include Comparable
  def <=>(other)
    puts "Comparing"
    0
  end
end

s = SomeClass.new
s < 123

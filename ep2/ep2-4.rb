Person = Struct.new(:name, :likes)

class Person
  def to_s
    "#{self.name} likes #{self.likes}"
  end
end

d = Person.new('andreas', 'mordi')

puts d

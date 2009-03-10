Animal = Object.new

def Animal.number_of_feet=(feet)
  @number_of_feet = feet
end

def Animal.number_of_feet
  @number_of_feet
end

def Animal.with_feet(feet)
  new_animal = clone
  new_animal.number_of_feet=feet
  new_animal
end

Cat = Animal.with_feet(4)

felix = Cat.clone

p felix.inspect


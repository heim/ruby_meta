animal = "cat"
def animal.speak
  puts "meow"
end

animal.speak

other = animal.clone #animal.dup

other.speak

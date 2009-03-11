animal = "cat"

animal.instance_eval do
  def speak
    puts "meow"
  end
end

puts animal.upcase
animal.speak

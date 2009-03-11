String.class_eval do
  puts self
end

String.class_eval do
  def with_cat
    "kitty says: " + self + ", you ass"
  end
end

puts "fuck off".with_cat

class Example
  def one
    def one
      @value
    end
    puts "expensive calculation"
    @value = 99 #expensive
  end
end

ex = Example.new
puts ex.one

puts ex.one

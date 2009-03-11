class Dave
  def self.const_missing(name)
    puts "Missing #{name}"
  end
  Fred
end

Fred
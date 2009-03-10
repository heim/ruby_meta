class Struct
  @children = []
  def self.inherited(klass)
    @children << klass
  end
  
  def self.children
    @children
  end
end

Dave = Struct.new(:name)
Fred = Struct.new(:age)
Frank = Struct.new(:day)

p Struct.children
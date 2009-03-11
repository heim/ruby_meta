module Persistable

  def self.included(cls)
    cls.extend ClassMethods  
  end
  
  module ClassMethods
    def find
      puts "in finds"
      new
    end
  end
    

  def save
    puts "in saves"
  end
end

class Person
  include Persistable
end

p = Person.find

p.save

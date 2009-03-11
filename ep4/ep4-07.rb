module Accessor
  def my_attr_accessor(name)
    class_eval %{
      def #{name}
        @#{name}
      end

      def #{name}=(val)
        @#{name} = val
      end
    }
  end
end

class MyClass
  extend Accessor
  my_attr_accessor :var
end

m = MyClass.new
m.var = "catzz"

puts m.var


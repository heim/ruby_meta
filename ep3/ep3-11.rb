module Accessor

  def my_attr_accessor(name)
    ivar_name = "@#{name}"

    getter_name = name
    setter_name = "#{name}="
    define_method(getter_name) do
      var = instance_variable_get(ivar_name)
      STDERR.puts "in #{getter_name} getting value #{var}"
      var
    end

    define_method(setter_name) do |value|
      instance_variable_set(ivar_name, value)
      STDERR.puts "in #{setter_name} setting value #{value}"
    end
  end
end

class Simple
  extend Accessor
  my_attr_accessor :kock
end


s = Simple.new

s.kock=10
puts s.kock

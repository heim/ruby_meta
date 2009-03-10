class Simple
  def initialize
    @ivar = "ivar with a value"
  end
  def simple(param)
    lvar = "lvar with a value"
    binding
  end
end

s = Simple.new
b = s.simple(99) { "block value" }

eval "puts param", b
eval "puts lvar", b
eval "puts yield", b
eval "puts self.class", b
eval "puts @ivar", b

require 'rubygems'
require 'redcloth'

class Formatter
  def initialize(text)
    @text = text
  end
  
  def to_html
    fail "need to define to_html in subclasses"
  end
end

class TextileFormatter < Formatter
  def to_html
    RedCloth.new(@text).to_html
  end
end

text = '*hello* "mordi":http://vg.no\n (tm)'

f = TextileFormatter.new(text)
p f.to_html

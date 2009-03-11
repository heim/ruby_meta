class Enum
  def self.new
    Class.new do
      def initialize(name)
        @name = name
      end
      
      def to_s
        "#{self.class}->#{@name}"
      end
      
      def self.const_missing(name)
        const_set(name, new(name))
      end
    end
  end
end

ThreatLevel = Enum.new
Color = Enum.new

puts ThreatLevel::Orange != Color::Orange
puts ThreatLevel::Orange == ThreatLevel::Orange

puts ThreatLevel::Orange
puts Color::Orange
module Logger
  def log(msg)
    STDERR.puts msg
  end
end


class Truck
  include Logger
end

class Ship
  include Logger
end

a_truck = Truck.new

a_truck.log("truck")

Ship.new.log("ship")


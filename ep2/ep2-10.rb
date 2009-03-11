module Logger
  def log(*msg)
    msg. do |m|
      puts 1
      puts m + "\n"
    end    
  end
end


class Truck
  extend Logger
end

Truck.log "truck off" "motherfucker"


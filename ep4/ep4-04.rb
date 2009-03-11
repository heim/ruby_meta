class Dave
 
end

Dave.instance_eval do 
   def say_hello
    puts "hi"
  end
end

Dave.say_hello

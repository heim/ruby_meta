class Container < (rand < 0.5 ? Array : Hash)
end

c = Container.new

c[0] = "hello"

p c

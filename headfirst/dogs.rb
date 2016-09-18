# Class in Ruby

class Dog

  def talk
    puts "Bark!"
  end

  def move(destination)
    puts "Running to the #{destination}."
  end

end

# Create new object of this class
fido = Dog.new
rex = Dog.new

fido.talk
fido.move("food bowl.")

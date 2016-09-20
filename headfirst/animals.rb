# Class in Ruby

class Animal

  attr_accessor :name, :age

  def name=(value)
    if value == ""
      raise "Name can't be blank!"
    end
    @name = value
  end

  def age=(value)
    if value < 0
      raise "An age of #{value} isn't valid!"
    end
    @age = value
  end

  def talk
    puts "#{@name} says Bark!"
  end

  def move(destination)
    puts "#{@name} runs to the #{destination}."
  end

  def report_age
    puts "#{@name} is #{@age} years old."
  end

end

class Bird < Animal

  def talk
    puts "#{@name} says Chirp! Chirp!"
  end

end

class Dog < Animal

  def to_s
    "#{@name} the dog, age #{@age}"
  end

end

class Cat < Animal

  def talk
    puts "#{@name} says Meow! Meow!"
  end

end

# Create new object of this class
lucy = Dog.new
lucy.name = "Lucy"
lucy.age = 4

rex = Dog.new
rex.name = "Rex"
rex.age = 2

puts lucy, rex

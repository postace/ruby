# Class in Ruby

class Bird
  def talk(name)
    puts "#{name} says Chirp! Chirp!"
  end
  def move(name, destination)
    puts "#{name} flying to the #{destination}."
  end
end

class Dog

  # Only define the reader methods automatically
  attr_reader :name, :age

  # Validation @name
  def name=(new_name)
    if new_name == ""               # If the name is blank
      puts "Name can't be blank!"   # Print an error message
    else
      @name = new_name      # Set the instance variable only if the name is valid
  end

  # Validation @age
  def age=(new_age)
    if new_age < 0                  # If the age is negative
      puts "An age of #{new_age} isn't valid"
    else
      @age = new_age        # Set the instance variable only if the age is valid
  end

  def talk
    puts "#{@name} says Bark!"
  end

  def move(destination)
    puts "#{@name} running to the #{destination}."
  end

  def report_age
    puts "#{@name} is #{@age} years old."
  end
end

class Cat
  def talk(name)
    puts "#{name} says Meow!"
  end
  def move(name, destination)
    puts "#{name} running to the #{destination}."
  end
end

# Create new object of this class
dog = Dog.new
cat = Cat.new
bird = Bird.new

dog.name = "Daisy"
dog.age = 7
dog.report_age

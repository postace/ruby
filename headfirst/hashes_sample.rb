# Introduce to hashes
class Candidate
  # Set up attribute to accessors
  attr_accessor :name, :age, :occupation, :hobby, :birthplace
  # Set up Candidate.new to take arguments
  # options is the hash parameters
  # Default hashes
  # IF hash has no value passed in, it is a required keyword
  def initialize(name, age:, occupation:, hobby: nil, birthplace: "Sleepy Creek")
    self.name = name
    self.age = age
    self.occupation = occupation
    self.hobby = hobby
    self.birthplace = birthplace
  end

  def print_summary(candidate)
    puts "Candidate: #{candidate.name}"
    puts "Age: #{candidate.age}"
    puts "Occupation: #{candidate.occupation}"
    puts "Hobby: #{candidate.hobby}"
    puts "Birthplace: #{candidate.birthplace}"
  end
end

candidate = Candidate.new("Mobi Army", age: 56, occupation: "Somewhere")

p candidate

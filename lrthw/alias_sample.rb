# Introduce to alias

class CelestialBody
  attr_accessor :type, :name
end

# Hash default blocks
bodies = Hash.new do |hash,key|
  # Create new object for current key
  body = CelestialBody.new
  body.type = "planet"
  # Assign to the hash and returns the new value
  hash[key] = body
end

bodies['Mars'].name = 'Mars'
bodies['Europa'].name = 'Europa'
bodies['Europa'].type = 'moon'
bodies['Venus'].name = 'Venus'

p bodies

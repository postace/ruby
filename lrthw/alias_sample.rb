# Introduce to alias

class CelestialBody
  attr_accessor :type, :name
end

default_body = CelestialBody.new
default_body.type = 'planet'
# Make the planet default for all unassigned hash key
bodies = Hash.new(default_body)

bodies['Mars'].name = 'Mars'
p bodies['Mars']

bodies['Europa'].name = 'Europa'
bodies['Europa'].type = 'moon'
p bodies['Europa']

bodies['Venus'].name = 'Venus'
p bodies['Venus']

p bodies

# Exercise page 207

def make_casserole
  puts "Preheat oven to 375 degress"
  ingredients = yield
  puts "Place #{ingredients} in dish"
  puts "Bake for 20 minutes"
end

make_casserole do
  "noodles, celery, and tuna in dish"
end

make_casserole do
  "rice, broccoli, and chicken in dish"
end



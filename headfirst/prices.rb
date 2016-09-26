# Using 'blocks', 'each' in Ruby

def total(prices)
  amount = 0
  prices.each do |price|    # Process each price
    amount += price         # Add the current price to the total
  end
  amount                    # Return the final total
end

def refund(prices)
  amount = 0                # Start the total at 0
  prices.each do |price|    # Process each price
    amount -= price         # Refund the current price
  end
  amount                    # Return the final total
end

def show_discounts(prices)
  prices.each do |price|    # Process each price
    amount_off = price / 3.0 # Calculate discount
    # Format and print the current discount
    puts format("Your discount: $%.2f", amount_off)
  end
end

prices = [3.99, 25.00, 8.99]

puts format("%.2f", total(prices))
puts format("%.2f", refund(prices))
show_discounts(prices)

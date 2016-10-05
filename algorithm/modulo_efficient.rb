# Calculate modulo with exponential

require 'openssl'

$MODULO = 10**9+7
@value = 999_999_999_999_999_999_999
t1 = Time.new
result = @value.to_bn.mod_exp(@value, $MODULO)
t2 = Time.new

puts t2-t1

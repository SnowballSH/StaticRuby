# frozen_string_literal: true

require 'static_ruby'

pair = Pair.new(1, 2)
p pair
p pair.to_s
p pair.to_a

# pair.first = 5  (ERROR)
p pair.size

tuple = Tuple.new('ele1', 'ele2', 3, 0, true)

p tuple
p tuple.to_s
p tuple.to_a

p tuple.size
p tuple.first
p tuple.last

p tuple[2], tuple[3]

# tuple[1] = 2 ERROR

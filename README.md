# StaticRuby

Create static and immutable structures in Ruby.

Example: [test.rb](https://github.com/SnowballSH/StaticRuby/blob/master/test/test.rb)

RubyGem: [static-ruby](https://rubygems.org/gems/static-ruby)

Install: 
- Gemfile: `gem 'static-ruby', '~> 0.0.3.1'`
- Global: `gem install static-ruby`

```ruby
require 'static_ruby'

pair = Pair.new(1, 2)
p pair         # #<Pair @first=1, @second=2, @size=2>
p pair.to_s    # "Pair(1 2)"
p pair.to_a    # [1, 2]
p pair.size    # 2

# pair.first = 5  (ERROR)

tuple = Tuple.new('ele1', 'ele2', 3, 0, true)

p tuple        # #<Tuple @elements=["ele1", "ele2", 3, 0, true], @size=5, @first="ele1", @last=true>
p tuple.to_s   # "Tuple([\"ele1\", \"ele2\", \"3\", \"0\", \"true\"])"
p tuple.to_a   # ["ele1", "ele2", 3, 0, true]

p tuple.size   # 5
p tuple.first  # 5
p tuple.last   # true

p tuple[2], tuple[3]  # 3, 0

# tuple[1] = 2 ERROR
```

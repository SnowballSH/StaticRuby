class Pair
  attr_reader :size, :first, :second

  def initialize(first, second)
    @first = first
    @second = second
    @size = 2
  end

  def to_a
    [@first, @second]
  end

  def to_s
    "Pair(#{@first} #{@second})"
  end

  def ==(o)
    @first == o.first && @second == o.second
  end

  def !=(o)
    @first != o.first || @second != o.second
  end

  def each(&block)
    block.call(@first)
    block.call(@second)
  end
end


class Triple
  attr_reader :size, :first, :second, :third

  def initialize(first, second, third)
    @first = first
    @second = second
    @third = third
    @size = 3
  end

  def to_a
    [@first, @second, @third]
  end

  def to_s
    "Triple(#{@first} #{@second} #{@third})"
  end

  def ==(o)
    @first == o.first && @second == o.second && @third == o.third
  end

  def !=(o)
    @first != o.first || @second != o.second || @third != o.third
  end

  def each(&block)
    block.call(@first)
    block.call(@second)
    block.call(@third)
  end
end


class Tuple
  attr_reader :size, :elements, :first, :last

  def initialize(*elements)
    @elements = elements
    @size = elements.size
    @first = elements.size != 0 ? elements[0] : nil
    @last = elements.size != 0 ? elements[-1] : nil
  end

  def to_a
    @elements
  end

  def to_s
    "Tuple(#{@elements.map { |x| x.to_s }})"
  end

  def ==(o)
    @elements == o.elements
  end

  def !=(o)
    @elements != o.elements
  end

  def [](i)
    @elements[i]
  end

  def []=(_, _)
    raise('Tuple cannot be modified')
  end

  def each(&block)
    @elements.each do |x|
      block.call(x)
    end
  end

  def each_with_index(&block)
    @elements.each_with_index do |x, i|
      block.call(x, i)
    end
  end
end

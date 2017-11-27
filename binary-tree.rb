class Node
  attr_accessor :value, :parent, :left, :right
  def initialize(value)
    @value = value
    @parent = nil
    @left = nil
    @right = nil
  end

  def inspect
    "{#{@left.inspect} <- #{@value} -> #{@right.inspect}}"
  end

  def insert(value)
    if value <= @value
      @left.nil? ? @left = Node.new(value) : @left.insert(value)
    else
      @right.nil? ? @right = Node.new(value) : @right.insert(value)
    end
  end
end


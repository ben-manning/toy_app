class BinTree
  attr_reader :value, :left, :right

  def initialize(value)
    @value = value
    @left = nil
    @right = nil
  end

  def insert(el)
    if el < @value
      if @left == nil
        @left = BinTree.new(el)
      else
        @left.insert(el)
      end
    else
      if @right == nil
        @right = BinTree.new(el)
      else
        @right.insert(el)
      end
    end
  end

  def max
    if !@right
      @value
    else
      @right.max
    end
  end

  def min
    if !@left 
      @value
    else
      @left.min
    end 
  end

  def height
  end
end
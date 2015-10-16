class CartesianProduct
  include Enumerable

  def initialize(elem1,elem2)
    @elem1 = elem1
    @elem2 = elem2
  end
  
  def elem1
    @elem1
  end
  
  def elem2
    @elem2
  end
  
  def elem1=(value)
    @elem1 = value
  end
  
  def elem2=(value)
    @elem2 = value
  end
  
  def each
    @elem1.each{|i| @elem2.each{|j| yield [i,j]}}
  end
end
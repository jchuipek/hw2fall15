class Dessert

  def initialize(name, calories)
    # YOUR CODE HERE
    @name = name
    @calories = calories
    
  end
  
  def healthy?
    # YOUR CODE HERE
    if(@calories < 200)
      return true
    else
      return false
    end
  end
  
  def delicious?
    return true
  end
  
  def name
    @name
  end
  
  def calories
    @calories
  end
  
  def name=(value)
     @name = value
  end
  
  def calories=(value)
     @calories = value
  end
  
  
end

class JellyBean < Dessert
  def initialize(name, calories, flavor)
    @name = name
    @calories = calories
    @flavor = flavor
  end
  
  def delicious?
    if(@flavor == "black licorice")
      return false
    else
      return true
    end
  end
  
  def flavor
    @flavor
  end
  
  def flavor=(value)
    @flavor = value
  end
end
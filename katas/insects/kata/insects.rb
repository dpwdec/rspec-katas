class Insect
  def initialize
    @food = ""
    @legs = 6
  end
  
  def food
    @food
  end
  
  def legs
    @legs
  end
end

class Beetle < Insect
  def initialize
    super
    @food = "Wood"
  end
  
  def burrow
    "I can do some burrowing!"
  end
end

class Bee < Insect
  def initialize
    super
    @food = "Nectar"
  end
  
  def fly
    "I believe I am flying!"
  end
end
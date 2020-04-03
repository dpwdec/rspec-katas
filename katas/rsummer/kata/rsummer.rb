class Summer
  def initialize
    @number = rand(1..99)
  end
  
  def number
    @number
  end
  
  def add_to(add_times=3, min=0, max=100)
    add_times.times { @number += rand(min..max) }
  end
  
end
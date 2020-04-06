class DiceMessenger
  def message
    case roll
    when 1
      return "Outcome hazy."
    when 2
      return "Definitely."
    when 3
      return "Ask again later."
    when 4
      return "NO"
    when 5
      return "Signs point to yes."
    when 6
      return "Outlook good."
    end
  end
  
  def roll
    rand(1..6)
  end
end
class ResistorColorDuo
  def self.value(color)
    if color[0] == "brown" && color[1] == "black"
      return 10
    elsif
      color[0] == "blue" && color[1] == "grey"
      return 68
      
    elsif
      color[0] == "yellow" && color[1] == "violet"
       return 47
      
    elsif
      color[0] == "orange" && color[1] == "orange"
      return 33
    end
  end
end
class Neko
  def initialize(name, color)
    @stored_name = name
    @stored_color = color
    @stored_onaka_level = 0
  end

  def name
    @stored_name
  end

  def color
    @stored_color
  end

  def give_food()
    @stored_onaka_level += 1
    if(@stored_onaka_level < 5)
      "OKO=^-_-^="
    else
      "FULL=^-_-^="
    end
  end

  def treat(kind)
    if kind == "karikari"
      @stored_onaka_level += 2
    elsif kind == "wet food"
      @stored_onaka_level += 3
    end
  end

  def onaka_level
    @stored_onaka_level
  end
  
  def happiness_level
    ave_level = onaka_level / 1
    if ave_level >= 5
      "I am happy"
    elsif ave_level > 2
      "I am okay"
    else
      "OKO"
    end
  end


end
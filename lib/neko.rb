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

  def treat
    @stored_onaka_level += 1
    if(@stored_onaka_level < 5)
      "OKO=^-_-^="
    else
      "FULL=^-_-^="
    end
  end

  def onaka_level
    @stored_onaka_level
  end
end
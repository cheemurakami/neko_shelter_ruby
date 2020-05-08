class Neko
  
  attr_reader(:stored_name)

  def initialize(name, color)
    @stored_name = name
    @stored_color = color
    @stored_onaka_level = 0
    @stored_play_level = 0
    @stored_sleep_level = 0
  end

  # def name
  #   @stored_name
  # end

  def color
    @stored_color
  end

  def give_food()
    if @stored_onaka_level < 3
      @stored_onaka_level += 1
      "OKO=^-_-^="
    else
      "FULL=^-_-^="
    end
  end

  def treat(kind)
    if @stored_onaka_level < 3
      if kind == "karikari"
        @stored_onaka_level += 2
        "Not enough!"
      elsif kind == "wet food"
        @stored_onaka_level += 3
        "Yum yum!"
      end
    else 
      "FULL=^-_-^="
    end
  end

  def onaka_level
    @stored_onaka_level
  end

  def happiness_level
    total_level = onaka_level + play_level + sleep_level
    if total_level >= 5
      "I am happy"
    elsif total_level > 2
      "I am okay"
    else
      "OKO"
    end
  end

  def play_level
    @stored_play_level
  end

  def play
    @stored_play_level += 1
    "Meow!"
  end

  def sleep_level
    @stored_sleep_level
  end

  def neru
    @stored_sleep_level += 1
    "Zzzzzzz"
  end

  def clean
    "Thank you!"
  end

end
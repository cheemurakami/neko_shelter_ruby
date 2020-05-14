require ('rspec')
require ('pry')
require ('neko')

describe('neko') do
  it("is 2")do
    expect(2).to eq(2)
  end

  it("gives neko a name") do
    neko = Neko.new("kiwi", "black")
    expect(neko.stored_name).to eq("kiwi")
  end
  
  it("gives neko a color") do
    neko = Neko.new("kiwi", "black")
    expect(neko.color).to eq("black")
  end
  it("feeds neko a treat") do
    neko = Neko.new("kiwi", "black")
    expect(neko.give_food).to eq("OKO=^-_-^=")
  end
  it("tests when neko is full") do
    neko = Neko.new("kiwi", "black")
    neko.give_food
    neko.give_food
    neko.give_food
    neko.give_food
    neko.give_food
    expect(neko.give_food).to eq("FULL=^-_-^=")
  end
  it("adds onaka level when neko is fed") do
    neko = Neko.new("kiwi", "black")
    neko.give_food
    expect(neko.onaka_level).to eq(1)
    expect(neko.give_food).to eq("OKO=^-_-^=")
  end
 
  it("treats karikari food") do
    neko = Neko.new("kiwi", "black")
    neko.treat("karikari")
    expect(neko.onaka_level).to eq(2)
    expect(neko.treat("karikari")).to eq("Not enough!")

  end

  it("treats wet food") do
    neko = Neko.new("kiwi", "black")
    neko.treat("karikari")
    neko.treat("wet food")
    expect(neko.onaka_level).to eq(5)
  end

  it("adds happiness level when onaka_level is more than 5") do
    neko = Neko.new("kiwi", "black")
    neko.treat("karikari")
    neko.treat("wet food")
    expect(neko.happiness_level).to eq('I am happy')
  end

  it("adds happiness level when onaka_level is more than 5") do
    neko = Neko.new("kiwi", "black")
    neko.give_food
    expect(neko.happiness_level).to eq('OKO')
  end

  it("adds happiness level when onaka_level is more than 5") do
    neko = Neko.new("kiwi", "black")
    neko.treat("wet food")
    expect(neko.happiness_level).to eq('I am okay')
  end

  it("plays") do
    neko = Neko.new("kiwi", "black")
    neko.play
    expect(neko.play_level).to eq(1)
  end

  it("sleeps") do
    neko = Neko.new("kiwi", "black")
    neko.neru
    expect(neko.sleep_level).to eq(1)
  end

  it("adds happiness level when total level is more than 5") do
    neko = Neko.new("kiwi", "black")
    neko.treat("wet food")
    neko.treat("wet food")
    
    expect(neko.happiness_level).to eq('I am okay')
  end

  it("cleans litter box") do
    neko = Neko.new("kiwi", "black")
    expect(neko.clean).to eq('Thank you!')
  end

  it("shows nekos profile") do
    neko = Neko.new("kiwi", "black")
    expect(neko.profile).to eq("Name: #{neko.stored_name}, Temper check: #{neko.happiness_level}")
  end


end


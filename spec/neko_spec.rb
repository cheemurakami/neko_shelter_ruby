require ('rspec')
require ('pry')
require ('neko')

describe('neko') do
  it("is 2")do
    expect(2).to eq(2)
  end
  it("gives neko a name") do
    neko = Neko.new("kiwi", "black")
    expect(neko.name).to eq("kiwi")
  end
  it("gives neko a color") do
    neko = Neko.new("kiwi", "black")
    expect(neko.color).to eq("black")
  end
  it("feeds neko a treat") do
    neko = Neko.new("kiwi", "black")
    expect(neko.treat).to eq("=^-_-^=")
  end
  it("adds onaka level when neko is fed") do
    neko = Neko.new("kiwi", "black")
    neko.treat
    neko.treat
    neko.treat
    neko.treat
    neko.treat
    neko.treat
    expect(neko.onaka_level).to eq(6)
    expect(neko.treat).to eq("=^-_-^=")
  end


end


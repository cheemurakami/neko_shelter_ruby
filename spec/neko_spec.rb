require ('rspec')
require ('pry')
require ('neko')

describe('neko') do
  it("is 2")do
  expect(2).to eq(2)
  end
  it("gives neko a name")do
  neko = Neko.new("kiwi")
  expect(neko.name).to eq("kiwi")
  end
end


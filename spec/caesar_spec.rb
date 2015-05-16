require 'spec_helper'

describe "the caesar cipher" do
  it "encodes lower case characters" do
    expect(caesar_cipher('a',5)).to eq('f')
    expect(caesar_cipher('z',1)).to eq('a')
    expect(caesar_cipher('c',-15)).to eq('n')
  end

  it "encodes upper case characters" do
    expect(caesar_cipher('C',2)).to eq('E')
    expect(caesar_cipher('Z',4)).to eq('D')
    expect(caesar_cipher('E',-7)).to eq('X')
  end

  it "leaves punctuation alone" do
    expect(caesar_cipher('!',5)).to eq('!')
  end

  it "encodes it all together" do
    expect(caesar_cipher('Be mine!', 3)).to eq("Eh plqh!")
  end
end

require_relative '../project/cipher.rb'

describe 'caesar_cipher' do
  it "returns the encrypted string modified by the caesar cipher technique" do
    expect(caesar_cipher("what a string", 5)).to eql("bmfy f xywnsl")
    expect(caesar_cipher("hello", 7)).to eql("olssv")
    expect(caesar_cipher("this is a string", 14)).to eql("hvwg wg o ghfwbu")
  end

  it "keeps the case format the same when modifying" do
    expect(caesar_cipher("ThIs iS weIRdlY CapiTAlIzed", 17)).to eql("KyZj zJ nvZIucP TrgzKRcZqvu")
  end

  it "does not modify non alphabet characters" do
    expect(caesar_cipher("johhny has 3467 apples.", 3)).to eql("mrkkqb kdv 3467 dssohv.")
  end
end
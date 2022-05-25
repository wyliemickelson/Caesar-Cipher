require_relative '../project/cipher.rb'

describe 'cipher_method' do
  it "returns the encrypted string modified by the caesar cipher technique" do
    expect(caesar_cipher("What a string!", 5)).to eql("Bmfy f xywnsl!")
    expect(caesar_cipher("Hello", 7)).to eql("Olssv")
    expect(caesar_cipher("this is a string", 14)).to eql("hvwg wg o ghfwbu!")
  end
end
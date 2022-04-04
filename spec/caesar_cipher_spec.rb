require './caesar_cipher.rb'

describe "caesar_cipher" do
  it "Transform a string" do
    expect(caesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
  end

  it "Do not transform special characters" do
    expect(caesar_cipher("<>!@#$%^&*", 3)).to eq("<>!@#$%^&*")
  end

  it "Work with empty string" do
    expect(caesar_cipher("", 6)).to eq("")
  end

  it "Work with large key" do
    expect(caesar_cipher("What a string!", 265)).to eq("Bmfy f xywnsl!")
  end
end
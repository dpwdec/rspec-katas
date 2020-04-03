require_relative '../kata/dog.rb'

RSpec.describe Dog do
  describe "#bark" do
    it "returns 'Woof!'" do
      expect(subject.bark).to eq("Woof!")
    end
  end
  
  describe "#hungry?" do
    it "returns true if hunger_level is more than 5" do
      hungry_dog = described_class.new(hunger_level: 7)
      expect(hungry_dog).to be_hungry
    end
    
    it "returns false if hunger_level is 5 or less" do
      satiated_dog = described_class.new(hunger_level: 5)
      expect(satiated_dog).to_not be_hungry
    end
  end
end
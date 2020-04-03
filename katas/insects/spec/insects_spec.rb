# create an insect class
# create a beetle class that inherits from insect
# create a bee class that inherits from insect
# All insects have 6 legs
# in each record a variable called @food which is a string describing their primary food source
# Beetles can burrow
# Bees can fly

require_relative '../kata/insects.rb'

shared_examples "insect" do |insect|
  it "is an insect" do
      expect(insect).to be_a_kind_of(Insect)
    end
  
  describe "# food" do
    it "stores a string describing its primary food source" do
      expect(insect.food).to be_a_kind_of(String)
    end
    it "has a food string that is NOT empty" do
      expect(insect.food).to_not be_empty
    end
  end
  
  describe "# legs" do
    it "has six legs" do
      expect(insect.legs).to eq(6)
    end
  end
end

describe Beetle do
  include_examples "insect", described_class.new
  
  describe "# burrow" do
    it "returns some burrowing action when asked to burrow" do
      expect(subject.burrow).to match(/burrow/)
    end
  end
end

describe Bee do
  include_examples "insect", described_class.new
  
  describe "# fly" do
    it "returns some flying when asked to fly" do
      expect(subject.fly).to match(/fly/)
    end
  end
end
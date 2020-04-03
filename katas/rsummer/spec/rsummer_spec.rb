# create an object that initializes with a random number
# and then adds to the initial random number n number of times
# with random numbers from a given range

require_relative '../kata/rsummer.rb'

describe Summer do
  
  describe "#number" do
    before(:context) { @generated_values = [] }
    
    it "each instance returns a different number" do
      10.times do
        @generated_values << Summer.new.number
      end
      expect(@generated_values.uniq.length).to be_within(2).of(10)
    end
  end
  
  context "check random numbers" do
    before(:context) { @previous_values = [] }
    
    before(:example) { @summer = Summer.new }
    
    it "returns a random number that wasn't already returned" do
      expect(@summer.number).to be_a_kind_of(Integer).and be_within(50).of(50)
      @previous_values << @summer.number
    end
    
    it "returns a random number that wasn't already returned" do
      expect(@summer.number).to be_a_kind_of(Integer).and be_within(50).of(50)
      @previous_values << @summer.number
    end
    
    it "returns a random number that wasn't already returned" do
      @previous_values.each { |previous_value| expect(@summer.number).to_not eq(previous_value) }
      @previous_values << @summer.number
    end
    
    it "returns a random number that wasn't already returned" do
      @previous_values.each { |previous_value| expect(@summer.number).to_not eq(previous_value) }
      @previous_values << @summer.number
    end
    
    it "returns a random number that wasn't already returned" do
      @previous_values.each { |previous_value| expect(@summer.number).to_not eq(previous_value) }
      @previous_values << @summer.number
    end
    
  end
  
end
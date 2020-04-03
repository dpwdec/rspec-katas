# create an object that initializes with a random number
# and then adds to the initial random number n number of times
# with random numbers from a given range

require_relative '../kata/rsummer.rb'

describe Summer do
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
# create an object that initializes with a random number
# and then adds to the initial random number n number of times
# with random numbers from a given range

require_relative '../kata/rsummer.rb'

describe Summer do
  
  describe " # number" do
    before(:context) { @generated_values = [] }
    
    it "each instance returns a different number" do
      10.times do
        @generated_values << Summer.new.number
      end
      expect(@generated_values.uniq.length).to be_within(2).of(10)
    end
  end
  
  describe " # add_to" do
    before(:example) { @times, @min, @max = rand(1..10), rand(1..50), rand(51..100) }
    
    it "adds n times in the range min - max" do
      expect { subject.add_to(@times, @min, @max) }.to change(subject, :number).by_at_least(@times * @min)
      .and change(subject, :number).by_at_most(@times * @max)
    end
  end
  
end
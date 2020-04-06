require_relative '../kata/dm.rb'

describe DiceMessenger do
  context "it rolls three" do
    subject = described_class.new
    it "returns 'Outcome hazy' with a roll of 1" do
      allow(subject).to receive(:roll) { 1 }
      expect(subject.message).to eq("Outcome hazy.")
    end
    it "returns 'Definitely' with a roll of 2" do
      allow(subject).to receive(:roll) { 2 }
      expect(subject.message).to eq("Definitely.")
    end
    it "returns 'Ask Again Later' with a roll of 3" do
      allow(subject).to receive(:roll) { 3 }
      expect(subject.message).to eq("Ask again later.")
    end
    it "returns 'NO' with a roll of 4" do
      allow(subject).to receive(:roll) { 4 }
      expect(subject.message).to eq("NO")
    end
    it "returns 'Signs point to yes.' with a roll of 5" do
      allow(subject).to receive(:roll) { 5 }
      expect(subject.message).to eq("Signs point to yes.")
    end
    it "returns 'Outlook good' with a roll of 6" do
      allow(subject).to receive(:roll) { 6 }
      expect(subject.message).to eq("Outlook good.")
    end
  end
end
require_relative '../kata/hd.rb'

describe CapacityChecker do
  context "recieves a valid capacity and list of files" do
    
    context "recieves input file sizes [4, 4, 4, 3, 3] with capacity 12" do
      subject = described_class.new(file_sizes: [4, 3, 4, 3, 4], capacity: 12)
      it "returns 3 for number of files that can be fully stored" do
        expect(subject.storage_check).to eq(3)
      end
      
      it "returns does have a valid capacity" do
        expect(subject).to be_capacity_valid
      end
      
      it "has valid files" do
        expect(subject).to be_valid_files
      end
    end
    
    context "recieves input file sizes [2, 1, 1, 1, 3, 5, 1] with capacity 10" do
      subject = described_class.new(file_sizes: [2, 1, 1, 1, 3, 5, 1], capacity: 10)
      it "return 9 for number of files that can be fully stored" do
        expect(subject.storage_check).to eq(6)
      end
      
      it "does have a valid capacity" do
        expect(subject).to be_capacity_valid
      end
      
      it "has valid files" do
        expect(subject).to be_valid_files
      end
    end
  end
  
  context "recieves invalid input capacity and list of files" do
    context "recieves invalid input capacity -10 with files [3, 5, 3, 2]" do
      subject = described_class.new(file_sizes: [3, 5, 3, 2], capacity: -10)
      it "raises an error when doing a storage_check" do
        expect { subject.storage_check }.to raise_error(described_class::InvalidFileCapacityError)
      end
      
      it "does NOT have valid capacity" do
        expect(subject).to_not be_capacity_valid
      end
      
      it "has valid files" do
        expect(subject).to be_valid_files
      end
    end
    
    context "recieves invalid input file size [3, -1, 2, 5] with capacity 15" do
      subject = described_class.new(file_sizes: [3, -1, 2, 5], capacity: 15)
      it "raises an InvalidInputFile error when doing a storage_check" do
        expect { subject.storage_check }.to raise_error(described_class::InvalidInputFile)
      end
      
      it "DOES NOT have valid files" do
        expect(subject).to_not be_valid_files
      end
    end
    
    context "recieves no input files or capacity" do
      subject = described_class.new()
      it "raises an error when doing a storage_check" do
        expect { subject.storage_check }.to raise_error(described_class::InvalidFileCapacityError)
      end
      
      it "does NOT have valid capacity" do
        expect(subject).to_not be_capacity_valid
      end
      
      it "DOES NOT have valid files" do
        expect(subject).to_not be_valid_files
      end
    end
  end
end
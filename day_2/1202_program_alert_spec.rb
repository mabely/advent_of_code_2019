require_relative "1202_program_alert"

describe Alert do
  describe ".call" do
    it "returns the correct response to 1,0,0,0,99" do
      expect(described_class.call([1,0,0,0,99])).to eq [2,0,0,0,99]
    end

    it "returns the correct response to 1,0,0,0,99" do
      expect(described_class.call([1,1,1,4,99,5,6,0,99])).to eq [30,1,1,4,2,5,6,0,99]
    end

    it "returns the correct response to 1,0,0,0,99" do
      expect(described_class.call([2,4,4,5,99,0])).to eq [2,4,4,5,99,9801]
    end
  end

  describe ".read_file" do
    it "returns contents of the file" do
      expect(described_class.read_file("input_test_file.txt")).to eq [1,2]
    end
  end
end

input_file = Alert.read_file("input.txt")
input = Alert.pre_run_changes(input_file)
p Alert.call(input)

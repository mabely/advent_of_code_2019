require_relative "calc"

describe Calculate do
  describe ".call" do
    it "returns the total" do
      expect(described_class.call("test_text.txt")).to eq 4
    end
  end

  describe ".read_file" do
    it "reads the file" do
      expect(described_class.read_file("test_text.txt")).to eq "12\n14\n"
    end
  end

  describe ".total_fuel" do
    let(:inputs) { "12\n14" }

    it "calculates total mass" do
      expect(described_class.total_fuel(inputs)).to eq 4
    end
  end

  describe ".fuel" do
    it "calculates fuel" do
      expect(described_class.fuel(12)).to eq 2
    end

    it "rounds down" do
      expect(described_class.fuel(14)).to eq 2
    end

    it "calculates fuel required for fuel when mass is 1969" do
      expect(described_class.fuel(1969)).to eq 966
    end

    it "calculates fuel required for fuel when mass is 100756" do
      expect(described_class.fuel(100756)).to eq 50346
    end
  end
end

class Calculate
  def self.call file
    total_fuel(read_file(file))
  end

  def self.read_file file
    file = File.open(file)
    file.read
  end

  def self.total_fuel inputs
    inputs.split.map(&:to_i).map do |mass|
      fuel(mass)
    end.reduce(:+)
  end

  def self.fuel mass
    (mass/3)-2
  end
end

p Calculate.call("input.txt")

class Alert
  def self.call input
    index_counter = 0
    op_code = 0
    op_code_index = 0

    input.each_with_index do |num, index|
      if index == index_counter
        op_code = num
        index_counter += match_op_code(op_code)
        op_code_index = index
        if op_code == 1
          new_val = input[input[op_code_index + 1]] + input[input[op_code_index + 2]]
          input[input[op_code_index + 3]] = new_val
        elsif op_code == 2
          new_val = input[input[op_code_index + 1]] * input[input[op_code_index + 2]]
          input[input[op_code_index + 3]] = new_val
        end
      end
    end
  end

  def self.read_file file
    file = File.open(file)
    data = file.read
    data.chomp.split(",").map(&:to_i)
  end
  
  def self.pre_run_changes input
    input[1] = 12
    input[2] = 2
    input
  end

  def self.match_op_code code
    case code 
    when 1
      4
    when 2
      4
    when 99
      0
    end
  end
end


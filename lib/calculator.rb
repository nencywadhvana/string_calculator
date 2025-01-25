class Calculator

  def add(inputs)
    return 0 if inputs.empty?
    if inputs.start_with?("//")
      inputs = inputs.gsub(';', ',')
    end
    input_array = inputs.gsub("\n", ",").split(",").map(&:to_i)
    find_negatives(input_array)  #find out negative numbers
    input_array.sum
  end

  private

  def find_negatives(input_array)
    negatives = input_array.select { |number| number < 0 }
    raise "Negative numbers are not allowed: #{negatives.join(', ')}" unless negatives.empty?
  end

end
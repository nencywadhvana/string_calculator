class Calculator

  def add(inputs)
    return 0 if inputs.empty?
    if inputs.start_with?("//")
      inputs = inputs.gsub(';', ',')
    end
    input_array = inputs.gsub("\n", ",").split(",").map(&:to_i)
    negatives = input_array.select { |number| number < 0 }
    raise "Negative numbers are not allowed: #{negatives.join(', ')}" unless negatives.empty?
    input_array.sum
  end

end
class Calculator

  def add(inputs)
    return 0 if inputs.empty?
    delimeter = ","
    if inputs.start_with?("//")
      if inputs.start_with?("//[")
        delimeter = inputs.match(%r{//\[(.*?)\]})[1]
        inputs = inputs.split("\n")[1]
      else
        inputs = inputs.gsub(';', ',')
      end
    end
    input_array = inputs.gsub("\n", delimeter).split(delimeter).map(&:to_i)
    find_negatives(input_array)  #find out negative numbers
    input_array.select { |number| number <= 1000}.sum
  end

  private

  def find_negatives(input_array)
    negatives = input_array.select { |number| number < 0 }
    raise "Negative numbers are not allowed: #{negatives.join(', ')}" unless negatives.empty?
  end

end
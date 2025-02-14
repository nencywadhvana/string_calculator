class Calculator

  def add(inputs)
    return 0 if inputs.empty?

    delimiter, inputs = extract_delimiter(inputs) # extract delimiters and remaining string    

    input_array = inputs.split(/#{delimiter}/).map(&:to_i) #split delimiter from string
    
    find_negatives(input_array) #find out negative numbers
    
    input_array.select { |number| number <= 1000}.sum #sum of string after rejecting larger number
  end

  private

  def find_negatives(input_array)
    negatives = input_array.select { |number| number < 0 }
    raise "Negative numbers are not allowed: #{negatives.join(', ')}" unless negatives.empty?
  end

  def extract_delimiter(inputs)
    delimiter = ',|\n'
    if inputs.start_with?("//")
      if inputs.start_with?("//[")
        delimiter = inputs.scan(%r{\[(.*?)\]}).flatten
      else
        inputs = inputs.gsub(';', ',')
        delimiter = inputs.scan(%r{//(.)\n}).flatten
      end
      inputs = inputs.gsub(%r{//[^\n]+\n}, '') #remove delimiters from string
    end
    [delimiter, inputs]
  end

end
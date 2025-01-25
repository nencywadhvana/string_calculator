class Calculator

  def add(inputs)
    return 0 if inputs.empty?
    delimiter = ',|\n'

    if inputs.start_with?("//")
      if inputs.start_with?("//[")
        escaped_delimiters = []
        inputs.scan(%r{\[(.*?)\]}).flatten.each { |d| escaped_delimiters << Regexp.escape(d) }
        delimiter = escaped_delimiters.join("|")
      else
        inputs = inputs.gsub(';', ',')
      end
      inputs = inputs.split("\n", 2)[1]
    end

    input_array = inputs.split(/#{delimiter}/).map(&:to_i)
    find_negatives(input_array)  #find out negative numbers
    input_array.select { |number| number <= 1000}.sum
  end

  private

  def find_negatives(input_array)
    negatives = input_array.select { |number| number < 0 }
    raise "Negative numbers are not allowed: #{negatives.join(', ')}" unless negatives.empty?
  end



end
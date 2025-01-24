class Calculator

  def add(inputs)
    return 0 if inputs.empty?
    if inputs.start_with?("//")
      inputs = inputs.gsub(';', ',')
    end
    inputs.gsub("\n", ",").split(",").map(&:to_i).sum
  end

end
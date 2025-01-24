class Calculator

  def add(inputs)
    return 0 if inputs.empty?
    inputs.gsub("\n", ",").split(",").map(&:to_i).sum
  end

end
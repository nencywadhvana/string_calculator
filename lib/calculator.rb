class Calculator

  def add(inputs)
    return 0 if inputs.empty?
    return inputs.to_i if inputs.length == 1
  end

end
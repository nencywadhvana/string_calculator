class Calculator

  def add(inputs)
    return 0 if inputs.empty?
    inputs.split(',').map(&:to_i).sum
  end

end
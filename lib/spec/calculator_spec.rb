require 'rails_helper'
require 'spec_helper'
require './lib/calculator'

RSpec.describe Calculator do

  it 'returns 0 for empty string' do
    calculator = Calculator.new 
    expect(calculator.add('')).to eq(0)
  end

  it 'returns number itself when input is only one' do
    calculator = Calculator.new
    expect(calculator.add('6')).to eq(6)
  end

  it 'returns sum of two numbers' do
    calculator = Calculator.new
    expect(calculator.add('6,9')).to eq(15)
  end

end
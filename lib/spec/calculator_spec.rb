require 'rails_helper'
require 'spec_helper'
require './lib/calculator'

RSpec.describe Calculator do

  it 'returns 0 for empty string' do
    calculator = Calculator.new 
    expect(calculator.add('')).to eq(0)
  end

end
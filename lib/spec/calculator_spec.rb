require 'rails_helper'
require 'spec_helper'
require './lib/calculator'

RSpec.describe Calculator do
  let(:calculator) { Calculator.new }

  it 'returns 0 for empty string' do
    expect(calculator.add('')).to eq(0)
  end

  it 'returns number itself when input is only one' do
    expect(calculator.add('6')).to eq(6)
  end

  it 'returns sum of two numbers' do
    expect(calculator.add('6,9')).to eq(15)
  end

  it 'returns sum of any amount of numbers' do
    expect(calculator.add('6,9,4')).to eq(19)
  end

  it 'returns the sum of numbers separated by commas or newlines' do
    expect(calculator.add("1\n2,3")).to eq(6)
  end

  it 'returns the sum of numbers with new delimiters' do
    expect(calculator.add("//;\n1;2")).to eq(3)
  end

  it 'Throw an exception for negative numbers' do
    expect { calculator.add("1,2,-3") }.to raise_error("Negative numbers are not allowed: -3")
    expect { calculator.add("1,2,-3,-6") }.to raise_error("Negative numbers are not allowed: -3, -6")

  end

  it 'ignores numbers larger than 1000' do
    expect(calculator.add("1001,2,3,2001")).to eq(5)
  end

  it 'handles same delimiters of any length' do
    expect(calculator.add("//[***]\n1***2***3")).to eq(6)
  end

  it 'handle case of multiple delimiters' do
    expect(calculator.add("//[*][%]\n1*2%3")).to eq(6)
  end

   it 'handle case of multiple custom delimiters with any length' do
    expect(calculator.add("//[***][%%]\n1***2%%3")).to eq(6)
  end

end
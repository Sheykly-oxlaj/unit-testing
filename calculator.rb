require "rspec"

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end

  def sqaure(number)
    return square * square
  end

  def power(number, exponent)
    return number ** exponent
  end
end

RSpec.describe Calculator do
  describe "#add" do
    it "should return the sum of two numbers" do
      calculator = Calculator.new
      result = calculator.add(1, 3)
      expect(result).to eq(4)
    end

    it "should work with negative numbers" do
      calculator = Calculator.new
      result = calculator.add(1, -3)
      expect(result).to eq(-2)
    end
  end
  ##############################################################
  describe "#subtract" do
    it "should return the difference of two numbers" do
      calculator = Calculator.new
      result = calculator.subtract(4, 2)
      expect(result).to eq(2)
    end
  end

  it "should work with negative numbers" do
    calculator = Calculator.new
    result = calculator.subtract(1, -3)
    expect(result).to eq(4)
  end
end

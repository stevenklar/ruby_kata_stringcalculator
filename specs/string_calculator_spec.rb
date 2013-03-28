require File.expand_path('../../string_calculator.rb', __FILE__)

describe StringCalculator, '#add' do
  it 'returns 0 when empty string given' do
    expectsNumber '', 0
  end

  it "returns number 1 when string '1' given" do
    expectsNumber '1', 1
  end

  it "returns 3 when string '1,2' given" do
    expectsNumber '1,2', 3
  end

  it 'can handle an unknown amount of numbers and sum it together' do
    expectsNumber '1,2,3,4,5,6,7,8,9', 45
  end

  it 'can handle comma and newline together' do
    expectsNumber "1\n2,3", 6
  end

  def expectsNumber(numbers, expected)
    calculator = StringCalculator.new
    result = calculator.add(numbers)

    result.should eq(expected)
  end
end
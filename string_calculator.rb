class StringCalculator
  def add(numbers)
    result = 0

    splittedNumbers = numbers.split(',')
    splittedNumbers.each do |number|
      result += number.to_i
    end

    result
  end
end
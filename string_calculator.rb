class StringCalculator
  def add(numbers)
    result = 0

    splittedCommaNumbers = numbers.split(',')

    splittedCommaNumbers.each do |number|
      splittedNewlineNumbers = number.split("\n")
      splittedNewlineNumbers.each do |newlineNumber|
        result += newlineNumber.to_i
      end
    end

    result
  end
end
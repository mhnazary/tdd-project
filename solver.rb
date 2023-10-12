class Solver 
  def factorial(num)
    if num < 0
      raise Exception.new "not factorial by negative numbers"
    end
    if num <=1
      return 1
    end
    return num * factorial(num - 1)
  end
  def fizzbuzz(number)
      if (number % 3).zero? && (number % 5).zero?
        'fizzbuzz'
      elsif (number % 3).zero?
        'fizz'
      elsif (number % 5).zero?
        'buzz'
      else
        number
      end
    end
end

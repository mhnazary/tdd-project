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
end

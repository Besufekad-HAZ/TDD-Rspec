class Solver
  def factorial(num)
    raise ArgumentError, 'Argument must be non-negative' if num.negative?
    return 1 if num.zero?

    (1..num).reduce(:*)
  end

  def reverse(string)
    string.reverse
  end

  def fizzbuzz(num)
    return 'fizzbuzz' if (num % 3).zero? && (num % 5).zero?
    return 'fizz' if (num % 3).zero?
    return 'buzz' if (num % 5).zero?

    num.to_s
  end
end

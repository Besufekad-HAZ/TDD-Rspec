require_relative '../solver'

describe Solver do
  before :each do
    @solver = Solver.new
  end
  it 'test for 4 factorial should return 24' do
    expect(@solver.factorial(4)).to eq(24)
  end

  it 'test for 0 factorial should return 1' do
    expect(@solver.factorial(0)).to eq(1)
  end

  it 'test for negative factorial should raise ArgumentError' do
    expect { @solver.factorial(-4) }.to raise_error(ArgumentError)
  end
  it 'test when n is divided by 5 should return buzz' do
    expect(@solver.fizzbuzz(10)).to eq('buzz')
  end

  it 'test when n is divided by 3 and 5 should return fizzbuzz' do
    expect(@solver.fizzbuzz(15)).to eq('fizzbuzz')
  end

  it 'test when n is not divided by 3 and 5 should return n in string' do
    expect(@solver.fizzbuzz(7)).to eq('7')
  end

  it 'test reverse method it should return reverse of string' do
    expect(@solver.reverse('hello')).to eq('olleh')
  end

  it 'test when n is divided by 3 should return fizz' do
    expect(@solver.fizzbuzz(6)).to eq('fizz')
  end

end
# When N is divisible by 3, return "fizz".
# When N is divisible by 5, return "buzz".
# When N is divisible by 3 and 5, return "fizzbuzz".
# Any other case, return N as a string (e.g. say N is 7 then return "7").
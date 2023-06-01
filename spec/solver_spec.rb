require_relative '../solver'

# Sample test go here

describe Solver do
  before :each do
    @solver = Solver.new
  end
  it 'test for 4 factorial should return 24' do
    expect(@solver.factorial(5)).to eq(120)
  end

  it 'test for 0 factorial should return 1' do
    expect(@solver.factorial(0)).to eq(1)
  end

  it 'test for negative factorial should raise ArgumentError' do
    expect { @solver.factorial(-2) }.to raise_error(ArgumentError)
  end
end

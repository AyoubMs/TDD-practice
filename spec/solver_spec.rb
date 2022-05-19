require_relative '../solver'

describe Solver do
  before :each do
    @solver = Solver.new
  end

  context 'Given 1 to the factorial method' do
    it 'should return 1 as the factorial' do
      number = 1
      expect(@solver.factorial(number)).to eql(1)
    end
  end

  context 'Given any positive number to the factorial method' do
    it 'should return the factorial of number' do
      number = 5
      expect(@solver.factorial(number)).to eql(120)
    end
  end

  context 'Given 0 to the factorial method' do
    it 'should return 1 as the factorial' do
      number = 0
      expect(@solver.factorial(number)).to eql(1)
    end
  end

  context 'Given any negative number to the factorial method' do
    it 'should raise an exception' do
      number = -2
      expect { @solver.factorial(number) }.to raise_error(RangeError, 'Number should not be negative')
    end
  end

  context 'Given a non empty string the reverse method' do
    it 'should return the reversed string' do
      string = 'hello'
      expected_reversed_string = 'olleh'
      expect(@solver.reverse(string)).to eql(expected_reversed_string)
    end
  end

  context 'Given an empty string the reverse method' do
    it 'should return the empty string' do
      string = ''

      expect(@solver.reverse(string)).to eql(string)
    end
  end

  context 'Given a number is divisible by 3, the fizzbuzz method' do
    it 'should return the string "fizz"' do
      number1 = 3
      number2 = 150

      result1 = @solver.fizzbuzz(number1)
      result2 = @solver.fizzbuzz(number2)

      expect(result1).to eql('fizz')
      expect(result2).to eql('fizz')
    end
  end

  context 'Given a number is divisible by 5, the fizzbuzz method' do
    it 'should return the string "buzz"' do
      number1 = 5
      number2 = 155

      result1 = @solver.fizzbuzz(number1)
      result2 = @solver.fizzbuzz(number2)

      expect(result1).to eql('buzz')
      expect(result2).to eql('buzz')
    end
  end
end

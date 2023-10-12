require './solver'

describe Solver do
  before(:each) do 
    @solver = Solver.new()
  end

  context "When Testing the factorial method" do  
    it "return 1 when the argument is 0" do
      expect(@solver.factorial(0)).to eq(1)
    end
    it "return 120 when the argument is 5" do
      expect(@solver.factorial(5)).to eq(120)
    end
    it "Raise exception when the argument is negative" do
      expect { @solver.factorial(-1) }.to raise_error("not factorial by negative numbers")
    end
  end

  context "When testing the reverse method" do
    it "return 'olleh' when the argument is 'hello'" do
      expect(@solver.reverse('hello')).to eql('olleh')
    end
    it "return 'h' when the argument is 'h'" do
      expect(@solver.reverse('h')).to eql('h')
    end
    it "return 'A1' when the argument is '1A'" do
      expect(@solver.reverse('A1')).to eql('1A')
    end
  end

  context "test the fizzbuzz method" do
    it "return fizz by multiply 3" do
      expect(@solver.fizzbuzz(3)).to eql('fizz')
      expect(@solver.fizzbuzz(9)).to eql('fizz')
    end
    it "return buzz by multiply 5" do
      expect(@solver.fizzbuzz(5)).to eql('buzz')
      expect(@solver.fizzbuzz(10)).to eql('buzz')
    end
    it "return fizzbuzz by multiplies to 3 and 5" do
      expect(@solver.fizzbuzz(15)).to eql('fizzbuzz')
      expect(@solver.fizzbuzz(30)).to eql('fizzbuzz')
    end
    it "return a number not divisible of 3 or 5" do 
      expect(@solver.fizzbuzz(2)).to eql(2)
      expect(@solver.fizzbuzz(4)).to eql(4)
    end
  end
end

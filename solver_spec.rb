require 'solver'

describe Solver do
  before(:each) do 
    @solver = Solver.new()
  end

  context "When Testing the factorial method " do  
    it "return 1 when the argument is 0" do
      expect(@solver.factorial(0)).to eq(1)
    end
    it "return 120 when the argument is 5" do
      expect(@solver.factorial(5)).to eq(120)
    end
    it "Raise exception when the argument is negative" do
      expect(@solver.factorial(-1)).to raise_exception('not factorial by negative numbers')
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
end
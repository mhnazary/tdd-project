require 'solver'

describe Solver do
  context "When Testing the factorial method " do
    before(:each) do 
      @solver = Solver.new()
    end
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
end
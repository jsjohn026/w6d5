require 'tdd_exercises'
require 'byebug'

describe Array do

  let(:array_1) { [1, 2, 1, 3, 3] }
  let(:array_2) { [1, 1, 1, 1 ] }
  let(:array_3) { [-1, 0, 2, -2, 1]}
  let(:rows) { [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ]}
  let(:cols) {[
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8]
  ]}

  describe "#remove_dups" do

  it "should remove duplicate elements in the array" do
    mock = double("David")
      expect(array_1.remove_dups).to eq([1,2,3])
      results = array_2.remove_dups
      expect(results).to eq([1])
    end
    
    it "should not mutate the original array" do
      expect(array_1.remove_dups).not_to eql(array_1)
    end

    it "return an empty array if self is empty" do
        expect([].remove_dups).to eq([])
    end
  end

  describe "#two_sum" do
    it "should find all pairs of position that sums to 0" do
      expect(array_3.two_sum).to eq([ [0, 4],[2, 3] ])
    end

    it "should return an empty array if there are no pairs that sum to zero" do
      expect(array_1.two_sum).to eq([])
    end
  end

  describe "#my_transpose" do
    it "convert between row-oriented and column-oriented expression" do
      expect(rows.my_transpose).to eq(cols)
    end
  end
end


describe "#stock_picker" do 

   let(:stock_prices_a) { [42, 16, 22, 100, 3, 4, 37] }
   let(:stock_prices_b) { [4, 16, 22, 100, 3, 4, 37] }

   it "raise an error if passed an object that is not array" do
    expect {stock_picker(2387) }.to raise_error(ArgumentError)
   end

   it "returns only one pair of days" do
    expect(stock_picker(stock_prices_a)).to eq( [1,3] )
    expect(stock_picker(stock_prices_b)).to eq( [0,3] )
  end
  
  it "the first index should not be greater than the second index" do
    expect(stock_picker(stock_prices_a)).not_to eql( [3, 1] )
   end

end
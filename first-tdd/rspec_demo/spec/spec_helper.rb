require "rspec_practice"

RSpec.describe Array do
  describe '#my_uniq' do 
    it "returns a new array with only unique values" do 
      expect([1, 2, 1, 3, 3].my_uniq).to eq([1, 2, 3])
    end
  end

  describe '#two_sum' do 
    it "find all pairs where eles sum to zero" do 
      expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
    end
  end

  describe '#my_transpose' do 
    it "transposes rows with columns and vice versa" do
      expect([[0, 1, 2],[3, 4, 5],[6, 7, 8]].my_transpose).to eq([[0, 3, 6],[1, 4, 7],[2, 5, 8]])
    end
  end

  describe '#stock_picker' do
    it "returns the two indices that have the largest pos diff between them" do 
      expect([0, 5, 10, 25, 15, 10, 30].stock_picker).to eq([0, 6]) 
    end
  end 

end 

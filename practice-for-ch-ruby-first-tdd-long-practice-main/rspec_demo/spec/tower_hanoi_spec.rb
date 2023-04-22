require "rspec_practice"
require "tower_hanoi"

describe TowerHanoi do 
    subject(:hanoi) { TowerHanoi.new }
    subject(:hanoi2) { TowerHanoi.new }
    
    
    describe "#initialize" do
        it "instantiates tower hanoi game with 3 towers, first one has 4 disks" do
            expect(hanoi.size).to eq(4)
            expect(hanoi.board).to eq([["disk", "disk", "disk", "disk"],[], []])
        end
    end 
    
    
    describe "#move" do
        it "move disk between towers" do
            expect(hanoi.move([0, 2])).to eq([["disk", "disk", "disk"],[], ["disk"]])
        end
    end
    
    describe "#won?" do
        before(:each) {hanoi2.board = [[],[], ["disk", "disk", "disk", "disk"]]}
        it "returns a boolean if tower 3 has all stacks" do 
            expect(hanoi2.won?).to be true
        end
    end


end 
require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  subject(:desert) { Dessert.new("Donut", 3, :chef) }

  describe "#initialize" do
    it "sets a type" do
      expect(desert.type).to_not be_nil
    end

    it "sets a quantity" do
      expect(desert.quantity).to_not be_nil
    end

    it "starts ingredients as an empty array" do
      expect(desert.ingredients).to eq([])
    end

    it "raises an argument error when given a non-integer quantity" do
      expect{Dessert.new("Pizza", "five", :chef)}.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do 
      desert.add_ingredient("apple")
      expect(desert.ingredients).to include("apple")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      desert.add_ingredient("apple")
      desert.add_ingredient("pear")
      desert.add_ingredient("orange")
      desert.add_ingredient("not a donut")
      desert.add_ingredient("still not a donut")
      expect(desert.ingredients).to_not eq(desert.mix!)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity"

    it "raises an error if the amount is greater than the quantity"
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name"
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end
end

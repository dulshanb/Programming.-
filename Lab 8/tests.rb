require 'minitest/autorun'
require_relative 'functions.rb'

describe "function evaluation" do
  before do
  end

  it "function find_twins()" do
    find_twins(0).must_equal []
    find_twins(1).must_equal []
    find_twins(2).must_equal []
    find_twins(3).must_equal [[3, 5]]
    find_twins(4).must_equal [[5, 7]]
    find_twins(5).must_equal [[5, 7]]
    find_twins(6).must_equal []
    find_twins(10).must_equal [[11, 13], [17, 19]]
    find_twins(20).must_equal [[29, 31]]
  end
end

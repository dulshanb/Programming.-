require 'minitest/autorun'
require_relative 'task_6-1.rb'

describe "function evaluation" do
  before do
  end

  it "function y()" do
    get_y(0).round(6).must_equal 0
    get_y(1).round(6).must_equal 0.333333
    get_y(2).round(6).must_equal 0.333333
    get_y(10).round(6).must_equal 0.098039
  end

  it "function find_n()" do
    find_n(1)[0].must_equal 1
    find_n(0.1)[0].must_equal 10
  end
end

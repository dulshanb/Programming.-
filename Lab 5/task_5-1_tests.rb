require 'minitest/autorun'
require_relative 'task_5-1.rb'

describe "expression evaluation" do
  before do
  end

  it "different numbers" do
    calculate(0, 0).round(6).must_equal 0
    calculate(1, 0).round(6).must_equal 0.183940
    calculate(0, 1).round(6).must_equal -0.728969
  end

  it "errors" do
    proc { calculate(5, 0) }.must_raise ZeroDivisionError
  end
end

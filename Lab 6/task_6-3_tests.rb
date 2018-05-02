require 'minitest/autorun'
require_relative 'task_6-3.rb'

describe "check both funcs" do
  before do
  end

  it "function max()" do
    max(->(x) { x }, -1, 1).round.must_equal 1
    max(->(x) { Math.sin(x) }, -1, Math::PI/2).round.must_equal 1
    max(->(x) { Math.sin(x) }, -1, 0).round.must_equal 0
    max(->(x) { Math.sin(x) }, -1, Math::PI/6).round(1).must_equal 0.5
    max(->(x) { Math.tan(x) }, -1, 1).round(1).must_equal 1.5
  end

  it "function scale()" do
    scale(0, ->(x) { -x }, 10, 100).must_equal 0
    scale(1, ->(x) { x }, -1, 1).round.must_equal 1
    scale(1, ->(x) { Math.sin(x) }, -1, Math::PI/6).round(0.5).must_equal 2
    scale(15, ->(x) { Math.tan(x) }, -1, 1).round.must_equal 10
  end
end

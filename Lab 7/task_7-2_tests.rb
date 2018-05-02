require 'minitest/autorun'
require_relative 'task_7-2.rb'

# puts 'Num:'
# n = IntNum.new
# n.print
# n.set_val 25
# n.print
# puts "get value: #{n.get_val}"
# puts "get value length (in digits): #{n.get_val_length}"
# puts
#
# puts 'NumStr:'
# ns = NumStr.new
# ns.print
# ns.set_val 25, 'some string'
# ns.print
# puts "get value: #{ns.get_val}"
# puts "get value length: #{ns.get_val_length}"
# puts "get number length (in digits): #{ns.get_num_length}"
# puts "get string length: #{ns.get_str_length}"


describe "objects tests" do
  before do
    @n = IntNum.new
    @ns = NumStr.new
  end

  it "object IntNum" do
    @n.get_val.must_equal 0
    @n.get_val_length.must_equal 1
    proc { @n.print }.must_output(/0/)

    @n.set_val(19)
    @n.get_val.must_equal 19
    @n.get_val_length.must_equal 2
    proc { @n.print }.must_output(/19/)

    @n.set_val(-200)
    @n.get_val.must_equal -200
    @n.get_val_length.must_equal 3
    proc { @n.print }.must_output(/-200/)
  end

  it "object NumStr" do
    # @ns.class.ancestors.include?(IntNum).must_equal true
    @ns.must_be_kind_of IntNum

    @ns.get_val.must_equal [0, '']
    @ns.get_val_length.must_equal [1, 0]
    @ns.get_num_length.must_equal 1
    @ns.get_str_length.must_equal 0
    proc { @ns.print }.must_output(/0/)
    proc { @ns.print }.must_output(/''/)

    @ns.set_val(-902, 'string')
    @ns.get_val.must_equal [-902, 'string']
    @ns.get_val_length.must_equal [3, 6]
    @ns.get_num_length.must_equal 3
    @ns.get_str_length.must_equal 6
    proc { @ns.print }.must_output(/-902/)
    proc { @ns.print }.must_output(/string/)
  end
end

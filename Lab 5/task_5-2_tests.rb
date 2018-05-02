require 'minitest/autorun'
require_relative 'task_5-2.rb'

describe "text encryption" do
  before do
  end

  it "word encryption checking..." do
    encrypt_word(1, 'x').must_equal "y"
    encrypt_word(1, 'y').must_equal "z"
    encrypt_word(1, 'z').must_equal "a"
  end

  it "string encryption checking..." do
    encrypt_string(1, 'xyz').must_equal "yza"
    encrypt_string(1, 'x y z').must_equal "y z a"
    encrypt_string(1, 'one two three').must_equal "pof uxp uisff"
  end
end

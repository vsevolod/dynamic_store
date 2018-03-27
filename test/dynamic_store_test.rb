require 'test_helper'

class DynamicStoreTest < ActiveSupport::TestCase
  test "truth" do
    puts ">>>"
    assert_kind_of Module, DynamicStore
  end
end

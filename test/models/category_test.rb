require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  def setup
    @category = Category.new
  end
  
  test "category invalid test" do
    @category.category = " "
    assert_not @category.valid?
  end
end

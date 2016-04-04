require 'test_helper'

class DesignerTest < ActiveSupport::TestCase
  test "create" do
    designer = Designer.new(:name => 'Juan', :telephone => 956214584, :enterprise => 'Macro')
    assert_equal 'Juan', designer.name
    assert_equal 956214584, designer.telephone
    assert designer.save
  end
  test "failing_create" do
    designer = Designer.new(:name => 'Juan', :telephone => 956214584, :enterprise => 'Macro')
    assert_equal true, designer.save
    assert_equal 0, designer.errors.count
    assert designer.errors[:name]
    assert designer.errors[:telephone]
    assert designer.errors[:enterprise]
  end
end

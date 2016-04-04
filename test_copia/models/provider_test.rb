require 'test_helper'

class ProviderTest < ActiveSupport::TestCase
  test "create" do
    provider = Provider.new(:name => 'pepe', :telephone => 956211475)
    assert_equal 'pepe', provider.name
    assert_equal 956211475, provider.telephone
    assert provider.save
  end
  test "failing_create" do
    provider = Provider.new(:name => 'pepe', :telephone => 956211475)
    assert_equal true, provider.save
    assert_equal 0, provider.errors.count
    assert provider.errors[:name]
    assert provider.errors[:telephone]
  end
end

require 'minitest/autorun'
require 'minitest/pride'
require './lib/node.rb'

class NodeTest < Minitest::Test
  def test_the_node_can_plop
    node = Node.new('plop')
    assert_equal 'plop',node.data
  end
  def test_can_it_understand_nil
    node = Node.new(nil)
    assert_equal nil, node.next_node
  end
end
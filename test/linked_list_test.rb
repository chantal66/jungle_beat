require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'
require './lib/node'

class LinkedListTest < Minitest::Test
 
  def test_does_it_know_that_head_is_nil
    list = LinkedList.new
    assert_nil nil, list.head
  end
  def test_does_it_know_how_to_append_one_node
    list = LinkedList.new
    list.append('doop')
    assert_equal 'doop', list.head.data 
    
  end

  def test_does_head_can_append_two_nodes

    list = LinkedList.new
    list.append('wwooow')
    list.append('hahaha')
    assert_equal 'wwooow', list.head.data
    assert_equal 'hahaha', list.head.next_node.data
  end
  def test_does_head_can_append_three_nodes
    list = LinkedList.new
    list.append('wwooow')
    list.append('hahaha')
    list.append('awesome')
    assert_equal 'awesome', list.head.next_node.next_node.data
  end  
    
  def test_can_it_count
    list = LinkedList.new
    #require 'pry'; binding.pry
    list.append('wwooow')
    assert_equal 1, list.count
   
  end
  
  

end
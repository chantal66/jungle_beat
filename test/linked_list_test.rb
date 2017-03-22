require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'
require './lib/node'
require 'pry'

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
    total_1 = list.count
    list.append('doop')
    total_2 = list.count
    
    assert_equal 1, total_1
    assert_equal 2, total_2


  end
  def test_accepts_strings
    list = LinkedList.new
    
    list.append('doop')
    result_1 = list.to_string
    
    list.append('deep')
    result_2 = list.to_string
  
    assert_equal 'doop', result_1
    assert_equal 'doop deep', result_2
  end
  def test_can_it_prepend
  
    list = LinkedList.new
    list.append('plop')
    result = list.to_string
    list.count
    list.append('suu')
    list.prepend('dop')
    list.to_string
    list.count
    result_1 = list.to_string
    result_2 = list.count
    
    assert_equal 'dop plop suu', result_1
    assert_equal 3 , result_2
  end
  def test_can_it_insert
    list = LinkedList.new
    list.append('plop')
    list.to_string
    list.append('suu')
    list.prepend('dop')
    list.to_string
    list.insert(1, 'woo')
    result = list.to_string
   
    assert_equal "dop woo plop suu", result
  end
  def test_can_it_find
    list = LinkedList.new
    list.append('deep')
    list.append('shi')
    list.append('shu')
    list.append('blop')
    list.insert(1, 'woo')
    list.to_string
    
    assert_equal 'shi', list.find(2,1)
    assert_equal 'woo shi shu', list.find(1,3)
  end

  def test_does_it_know_if_data_is_included
    list = LinkedList.new
    list.append('deep')
    list.append('shi')
    list.to_string
 
    assert true ,list.includes_data?('deep')
  end


end
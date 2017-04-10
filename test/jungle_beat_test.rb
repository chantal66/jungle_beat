require 'minitest/autorun'
require 'minitest/pride'
require './lib/jungle_beat'
require 'pry'


class JungleBeatTest < Minitest::Test
  def test_head_knows_nil
    jb = JungleBeat.new
 
    assert_equal nil, jb.list.head
  end

  def test_can_it_append
    jb = JungleBeat.new
    result = jb.append("deep doo ditt")
   
    assert_equal 'deep doo ditt', result
    assert_equal 'deep', jb.list.head.data
    assert_equal 'doo', jb.list.head.next_node.data
      
  end

  def test_can_it_append_many_many_things
  
    jb = JungleBeat.new
    jb.append("deep doo ditt")
    jb.append("woo hoo shu")
    
    assert_equal 6, jb.count 
   
  end
  def test_it_can_play
    
    jb = JungleBeat.new
    jb.append("deep doo ditt woo hoo shu")
    jb.play
    assert_equal 'deep doo ditt woo hoo shu', jb.list.to_string
    # assert_equal 500 , jb.rate
     assert_equal 6, jb.count
  end
end
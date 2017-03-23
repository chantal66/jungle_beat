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
    jb.append("deep doo ditt")

    assert_equal 'deep doo ditt', jb.append
  end
  
end
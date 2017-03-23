require './lib/linked_list'
require './lib/node'

class JungleBeat < LinkedList
  
  attr_accessor :list

  def initialize
    @list = LinkedList.new
  end

  
  
end
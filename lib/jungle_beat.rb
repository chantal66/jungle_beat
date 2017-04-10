require './lib/linked_list'
require './lib/node'

class JungleBeat < LinkedList
  
  attr_accessor :list, :beat, :rate, :voice

  def initialize
    @list = LinkedList.new
    @beat = beat

  end

  def append(beat)
    beat_split = beat.split(' ')    
    beat_split.each do |beat|
      @list.append(beat)
    end
    beat_split.join(' ')
  end

  def count
    @list.count
  end

  def play
     `say #{@list.to_string}`
  end

end
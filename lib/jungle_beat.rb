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
    first = Node.new (beat_split[0])
    
    beat_split[0..-1].each do |beat|
      @list.append(beat)
    end

  end

  def count
    @list.count
  end

  def play
    puts `say -r #{rate} -v #{voice} #{beat}`
    count
  end

  def rate
    @rate = 500
  end
  def voice
    @voice = 'Boing'
    
  end

end
class LinkedList
  attr_accessor :head, :new_node, :next_node

  def initialize
    @head = nil
    
     
  end


  def append(string)
    if @head.nil?
       @head = Node.new(string)
    else 
      current_node = @head
      until current_node.next_node.nil?
        current_node = current_node.next_node
      end
      current_node.next_node = Node.new(string)  
    end  
  end

  def count
    counter = 0
    if @head
       current_node = @head
       counter = 1
        until current_node.next_node.nil?
          current_node = current_node.next_node
          counter += 1
        end
    end  
    counter
  end

  def to_string
    @result = ''

    current_node = @head
  
    until current_node.nil?
      @result << current_node.data + " "
      current_node = current_node.next_node
    end 
     
    @result.strip
  end

  def prepend(string)
    current_node = @head
    @head = Node.new(string)
    @head.next_node = current_node
  end

  def insert(position, string)
    current_node = @head
    (position - 1).times do
      raise 'your list not long enough' if current_node.nil?
      current_node = current_node.next_node
    end  
    new_node = Node.new(string)
    new_node.next_node = current_node.next_node
    current_node.next_node = new_node
  end

  def find(position, total)
      find_position = ''
      current_node = @head
      position.times do
        raise 'your list not long enough' if current_node.nil?
        current_node = current_node.next_node 
      end
      total.times do
        find_position << current_node.data + ' '
        current_node = current_node.next_node 
      end
     find_position.strip
  end

  def includes_data?(string)
    #value = []
    @result = []
    current_node = @head
  
    until current_node.nil?
      return true if current_node.data == string
      @result << current_node.data
      current_node = current_node.next_node
    end 
    false
  end

  def pop
    previous_node = @head
    current_node = @head.next_node

    until current_node.next_node.nil?
      previous_node = current_node
      current_node = current_node.next_node
    end  
    previous_node.next_node = nil
    current_node.data 
    
  end  
end
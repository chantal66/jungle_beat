class LinkedList
  attr_accessor :head, :count
  
  def initialize
    @head = nil
    @count = 0
  end

  # def head
  #   @head
  # end

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
    if @head.nil?
      current_node = @head
      @count +=1
    else 
      until current_node.next_node.nil?
        current_node = current_node.next_node
        @count +=1
      end
      #current_node.next_node = Node.new(string)  
      @count
    end
  
  end

end
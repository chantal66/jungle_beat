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
    if @head
       current_node = @head
       @count +=1
    else 
        @count
        until current_node.next_node.nil?
          current_node = current_node.next_node
          @count
        end
        #current_node.next_node = Node.new(string)
    end  
    
  
  end
  def to_string
   @result = ''
    #if @head
      current_node = @head
      #@result << current_node.data
      
    #else 
     # @result
      # until current_node.next_node.nil? + ''
      #   current_node = current_node.next_node
      #   @result.strip
        
      # end
      until current_node.nil?
       @result << current_node.data + " "
       current_node = current_node.next_node
      end 
      #current_node.next_node = Node.new(string)  
      @result.strip
  end

end
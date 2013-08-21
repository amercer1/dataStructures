class LinkedList
  attr_accessor :count

  class Node
    attr_accessor :value, :next_node

    def initialize(value)
      @value=value
      @next_node=nil
    end
    
  end

  attr_accessor :position, :head_of_list, :end_of_list

  def initialize
    @head_of_list=nil
    @end_of_list=nil
    @position = -1
  end

  def insert(value)
    if @head_of_list == nil
      @head_of_list = Node.new(value)
      @position = 0
    else
      temp = @head_of_list
      until temp.next_node == nil do
        temp = temp.next_node
      end
      temp.next_node=Node.new(value)
      @position = @position + 1
    end
  end

  def get(index)
    if @position < 0 or index > @position
      nil
    elsif @head_of_list == nil
      nil
    else
      temp = @head_of_list
      if index == 0
        temp.value
      else
        #traverse list and return
        for i in 0...index
          temp = temp.next_node
        end
          temp.value
      end
    end
  end

  def delete(index)
    if @position < 0 or index > @position
      return nil
    elsif @head_of_list == nil
      return nil
    end
    
    if index == 0
      @head_of_list = @head_of_list.next_node
      @position = @position - 1
    else
      temp_1 = @head_of_list
      temp_2 = temp_1
      
      for i in 0...index
        temp_2 = temp_1
        temp_1 = temp_1.next_node
      end
      temp_2.next_node = temp_1.next_node
    end
  end

  def insert_at_index(index, value)
    if index < 0 or index > @position
      nil
    elsif @head_of_list == nil
      @head_of_list = Node.new(value)
      @position = 0
    else
      temp_1 = @head_of_list
      temp_2 = temp_1
     
      for i in 0...index
        temp_2 = temp_1
        temp_1 = temp_1.next_node
      end
      new_node = Node.new(value)
      temp_2.next_node=new_node
      new_node.next_node=temp_1 
      @position = @position + 1
    end
  end
end

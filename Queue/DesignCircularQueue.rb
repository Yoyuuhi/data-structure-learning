# https://leetcode.com/explore/learn/card/queue-stack/228/first-in-first-out-data-structure/1337/

class Node
  attr_accessor :val, :next
  def initialize(val)
      @val = val
      @next = nil
  end
end

class MyCircularQueue

=begin
  Initialize your data structure here. Set the size of the queue to be k.
  :type k: Integer
=end
  def initialize(k)
      @capacity = k
      @count = 0
  end


=begin
  Insert an element into the circular queue. Return true if the operation is successful.
  :type value: Integer
  :rtype: Boolean
=end
  def en_queue(value)
      return false if @count == @capacity
      newNode = Node.new(value)
      if @count == 0
          @head = newNode
          @tail = newNode
      else
          @tail.next = newNode
          @tail = newNode
      end
      @count += 1
      return true
  end


=begin
  Delete an element from the circular queue. Return true if the operation is successful.
  :rtype: Boolean
=end
  def de_queue()
      return false if @count == 0
      @head = @head.next
      @count -= 1
      return true
  end


=begin
  Get the front item from the queue.
  :rtype: Integer
=end
  def front()
      return -1 if @count == 0
      return @head.val
  end


=begin
  Get the last item from the queue.
  :rtype: Integer
=end
  def rear()
      return -1 if @count == 0
      return @tail.val
  end


=begin
  Checks whether the circular queue is empty or not.
  :rtype: Boolean
=end
  def is_empty()
      return @count == 0
  end


=begin
  Checks whether the circular queue is full or not.
  :rtype: Boolean
=end
  def is_full()
     return @count == @capacity 
  end


end

# Your MyCircularQueue object will be instantiated and called as such:
# obj = MyCircularQueue.new(k)
# param_1 = obj.en_queue(value)
# param_2 = obj.de_queue()
# param_3 = obj.front()
# param_4 = obj.rear()
# param_5 = obj.is_empty()
# param_6 = obj.is_full()
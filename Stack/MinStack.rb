# https://leetcode.com/explore/learn/card/queue-stack/230/usage-stack/1360/

class MinStack

  =begin
      initialize your data structure here.
  =end
      def initialize()
          @array = []
      end
  
  
  =begin
      :type x: Integer
      :rtype: Void
  =end
      def push(x)
          last = @array.last
          if !last.nil?
              @array << [x, [last[1], x].min]
          else
              @array << [x, x]
          end
      end
  
  
  =begin
      :rtype: Void
  =end
      def pop()
          @array.pop[0]
      end
  
  
  =begin
      :rtype: Integer
  =end
      def top()
          @array.last[0]
      end
  
  
  =begin
      :rtype: Integer
  =end
      def get_min()
          @array.last[1]
      end
  
  
  end
  
  # Your MinStack object will be instantiated and called as such:
  # obj = MinStack.new()
  # obj.push(x)
  # obj.pop()
  # param_3 = obj.top()
  # param_4 = obj.get_min()
# https://leetcode.com/explore/learn/card/linked-list/219/classic-problems/1205/

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def reverse_list(head)
  return head if head.nil? || head.next.nil?

   new_head = ListNode.new(head.val)
   new_head.next = nil
   current = head.next

   while current != nil

       node = ListNode.new(current.val)
       node.next = new_head
       new_head = node
       current = current.next
       
   end
  
   return new_head
end
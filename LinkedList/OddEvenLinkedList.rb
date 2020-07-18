# https://leetcode.com/explore/learn/card/linked-list/219/classic-problems/1208/

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
def odd_even_list(head)
  return if head.nil?
  
  odd = head
  even = head.next
  evenHead = even
  while !even.nil? && !even.next.nil? do
      odd.next = even.next
      odd = odd.next
      even.next = odd.next
      even = even.next
  end
  odd.next = evenHead
  return head
end
# https://leetcode.com/explore/learn/card/linked-list/219/classic-problems/1209/

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {Boolean}
def is_palindrome(head)
  stack = []
  queue = []
  current = head
  while current
      stack.unshift(current.val)
      queue << current.val
      current = current.next
  end
  queue == stack
end
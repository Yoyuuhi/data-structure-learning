# https://leetcode.com/explore/learn/card/linked-list/214/two-pointer-technique/1215/

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} headA
# @param {ListNode} headB
# @return {ListNode}
def getIntersectionNode(headA, headB)
  h = {}
  if headA.nil? || headB.nil?
      return
  end
  while !headA.nil? do
      h[headA] = true
      headA = headA.next
  end
  while !headB.nil? do
      if h.has_key?(headB)
          return headB
      end
      headB = headB.next
  end
  return
end
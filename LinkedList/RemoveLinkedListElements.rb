# https://leetcode.com/explore/learn/card/linked-list/219/classic-problems/1207/

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} val
# @return {ListNode}
def remove_elements(head, val)
  return nil if head.nil?

  original_head = head
  node_stack = []
  has_value = false

  while head
    if head.val != val
      node_stack.push(head)
      has_value = true
    end

    head = head.next
  end

  return nil if node_stack.empty?
  return original_head unless has_value

  node_stack.length.times.with_index do |i|
    node_stack[i].next = node_stack[i + 1] ? node_stack[i + 1] : nil
  end

  node_stack[0]
end
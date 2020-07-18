# https://leetcode.com/explore/learn/card/linked-list/214/two-pointer-technique/1212/

# Given a linked list, determine if it has a cycle in it.
# To represent a cycle in the given linked list, 
# we use an integer pos which represents the position (0-indexed) 
# in the linked list where tail connects to. If pos is -1, 
# then there is no cycle in the linked list.

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {Boolean}

def hasCycle(head)
  slower, faster = head, head

  while !slower.nil? && !faster.nil? && !faster.next.nil?
    slower = slower.next
    faster = faster.next.next

    return true if slower == faster
  end

  return false
end
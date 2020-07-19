# https://leetcode.com/explore/learn/card/data-structure-tree/134/traverse-a-tree/930/

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Integer[]}
def postorder_traversal(root)
  return [] if root.nil?
  values = []
  traversal(root,values)
  return values
end
def traversal(root,values)
  traversal(root.left,values) if root.left
  traversal(root.right,values) if root.right
  values << root.val
end
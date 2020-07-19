# https://leetcode.com/explore/learn/card/data-structure-tree/134/traverse-a-tree/928/

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
def preorder_traversal(root)
  if root == nil
      return []
  end
  return [root.val] + preorder_traversal(root.left) + preorder_traversal(root.right)
end
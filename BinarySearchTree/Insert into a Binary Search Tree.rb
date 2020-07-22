# https://leetcode.com/explore/learn/card/introduction-to-data-structure-binary-search-tree/141/basic-operations-in-a-bst/1003/

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
# @param {Integer} val
# @return {TreeNode}
def insert_into_bst(root, val)
  return TreeNode.new(val) if root.nil?
  insert_bst(root, val)
  return root
end

def insert_bst(root, val)
  if root.right && val > root.val
      insert_bst(root.right, val)
  elsif root.left && val < root.val
      insert_bst(root.left, val)
  elsif !root.right && val > root.val
      root.right = TreeNode.new(val)
  elsif !root.left && val < root.val
      root.left = TreeNode.new(val)
  end
end
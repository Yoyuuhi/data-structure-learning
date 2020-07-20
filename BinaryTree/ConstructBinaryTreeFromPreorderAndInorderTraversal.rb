# https://leetcode.com/explore/learn/card/data-structure-tree/133/conclusion/943/

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {Integer[]} preorder
# @param {Integer[]} inorder
# @return {TreeNode}
def build_tree(preorder, inorder)
  return if inorder.empty?
  last_node_val = preorder[0]
  last_node_index = inorder.index(last_node_val)
  node = TreeNode.new(last_node_val)
  if last_node_index > 0
    node.left = build_tree(preorder[1..last_node_index], inorder[0..last_node_index-1])
  end
  if last_node_index < inorder.length-1
    node.right = build_tree(preorder[last_node_index+1..-1], inorder[last_node_index+1..-1])
  end
  node
end
# https://leetcode.com/explore/learn/card/data-structure-tree/133/conclusion/942/

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {Integer[]} inorder
# @param {Integer[]} postorder
# @return {TreeNode}
def build_tree(inorder, postorder)
  return if inorder.empty?
  last_node_val = postorder[-1]
  last_node_index = inorder.index(last_node_val)
  node = TreeNode.new(last_node_val)
  if last_node_index > 0
      node.left = build_tree(inorder[0..last_node_index-1], postorder[0..last_node_index-1])
  end
  if last_node_index < inorder.length-1
      node.right = build_tree(inorder[last_node_index+1..-1], postorder[last_node_index..-2])
  end
  node
end
# https://leetcode.com/explore/learn/card/data-structure-tree/17/solve-problems-recursively/535/

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
# @return {Integer}
def max_depth(root)
  if root.nil?
      return 0
  end
  if root.left.nil? && root.right.nil?
      return 1
  elsif root.left.nil?
      return 1+max_depth(root.right)
  elsif root.right.nil?
      return 1+max_depth(root.left)
  else
      return 1+[max_depth(root.left),max_depth(root.right)].max
  end
end
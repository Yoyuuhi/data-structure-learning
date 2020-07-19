# https://leetcode.com/explore/learn/card/data-structure-tree/134/traverse-a-tree/931/

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
# @return {Integer[][]}
def level_order(root)
  return [] unless root
  result = {}
  level(root,0,result)
  return result.values
end

def level(root,level,result)
  if result.has_key?(level)
      result[level] = (result[level]<<root.val)
  else
      result[level] = [root.val]
  end
  
  level(root.left,level+1,result) if root.left
  level(root.right,level+1,result) if root.right
end
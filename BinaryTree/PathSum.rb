# https://leetcode.com/explore/learn/card/data-structure-tree/17/solve-problems-recursively/537/
# 練習、いい方法ではない

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
# @param {Integer} sum
# @return {Boolean}
def has_path_sum(root, sum)
  return false if !root
  sumCal = 0
  results = []
  equalSum(root, sum, sumCal, results)
  return results.include?(sum)
end

def equalSum(root, sum, sumCal, results)
  sumCal += root.val
  equalSum(root.left, sum, sumCal, results)  if root.left 
  equalSum(root.right, sum, sumCal, results) if root.right
  if !root.left && !root.right
      results << sumCal
  end
end
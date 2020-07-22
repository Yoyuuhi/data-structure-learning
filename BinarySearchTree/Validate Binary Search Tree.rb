# https://leetcode.com/explore/learn/card/introduction-to-data-structure-binary-search-tree/140/introduction-to-a-bst/997/discuss/32184/Elegant-Ruby-solution

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
# @return {Boolean}
def is_valid_bst(root)
  return true unless root
  ifTrue = [true]
  judge(root, nil, nil, ifTrue)
  return ifTrue[0]
end

def judge(root, minLim, maxLim, ifTrue)
  if (minLim != nil && root.val <= minLim ) || (maxLim != nil && root.val >= maxLim)
      ifTrue[0] = false
  end

  if root.left
      ifTrue[0] = false if root.left.val >= root.val
      judge(root.left, minLim, root.val, ifTrue)
  end
  if root.right
      ifTrue[0] = false if root.right.val <= root.val
      judge(root.right, root.val, maxLim, ifTrue)
  end
end
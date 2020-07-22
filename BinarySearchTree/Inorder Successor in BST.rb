# https://leetcode.com/explore/learn/card/introduction-to-data-structure-binary-search-tree/140/introduction-to-a-bst/998/

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @param {TreeNode} p
# @return {TreeNode}
def inorder_successor(root, p)
  if p.right
      temp = p.right
      while temp.left do
          temp = temp.left
      end
      return temp
  else
      return find_successor(root, p, nil)
  end
end

def find_successor(root, p, lim)
  if p.val > root.val && root.right
      find_successor(root.right, p, lim)
  elsif p.val < root.val && root.left
      find_successor(root.left, p, root.val)
  else
      return lim
  end
end
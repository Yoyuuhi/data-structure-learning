# https://leetcode.com/explore/learn/card/n-ary-tree/130/traversal/915/

# Definition for a Node.
# class Node
#     attr_accessor :val, :children
#     def initialize(val)
#         @val = val
#         @children = []
#     end
# end

# @param {Node} root
# @return {List[List[int]]}
def levelOrder(root)
  return [] unless root
  result = {}
  level(root,0,result)
  return result.values
end

def level(root, level, result)
  if result.has_key?(level)
      result[level] = (result[level]<<root.val)
  else
      result[level] = [root.val]
  end
  
  root.children.each do |child|
      level(child,level+1,result)
  end
end
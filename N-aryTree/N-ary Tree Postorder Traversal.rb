# https://leetcode.com/explore/learn/card/n-ary-tree/130/traversal/926/

# https://leetcode.com/explore/learn/card/n-ary-tree/130/traversal/925/

# Definition for a Node.
# class Node
#     attr_accessor :val, :children
#     def initialize(val)
#         @val = val
#         @children = []
#     end
# end

# @param {Node} root
# @return {List[int]}
def postorder(root)
  return [] if root.nil?
  values = []
  traversal(root, values)
  return values
end

def traversal(root, values)
  root.children.each do |child|
      traversal(child, values)
  end
  values << root.val
end
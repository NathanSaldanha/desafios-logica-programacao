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
class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val = 0, left = nil, right = nil)
        @val = val
        @left = left
        @right = right
    end
end

def dfs(root, depth)
    return depth if root.nil?

    left  = dfs(root.left,  depth + 1)
    right = dfs(root.right, depth + 1)

    [left, right].max
end

def max_depth(root)
    return 0 if root.nil?

    dfs(root, 0)
end

#       1
#      / \
#     2   3
#    / \
#   4   5
root = TreeNode.new(1,
    TreeNode.new(2, TreeNode.new(4), TreeNode.new(5)),
    TreeNode.new(3)
)

result = max_depth(root)
puts result  # => 3
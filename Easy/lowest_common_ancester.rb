=begin
	
		_______6______
       /              \
    ___2__          ___8__
   /      \        /      \
   0      _4       7       9
         /  \               \
         3   5				 12
	2
  1   3

input: root, node1, node2
output: node


eg: 6 ,2, 4
1.check if any of the node eql to root, if yes, retur root
2.determine which side left or right => both left or right recrusion
3.deferent side, return the root 


=end
class TreeNode
	attr_accessor :left, :right, :val
	def initialize(val)
		@val = val
		@left, @right = nil, nil
	end
end
node2 = TreeNode.new(2)
node1 = TreeNode.new(1)
node3 = TreeNode.new(3)
node2.left = node1
node2.right = node3


def lowest_common_ancestor(root, p, q)
	return root if p.val == root.val || q.val ==root.val
	if q.val > root.val && p.val > root.val 
		return lowest_common_ancestor(root.right, p, q)
	elsif q.val < root.val && p.val < root.val 
		return lowest_common_ancestor(root.left, p, q)
	else
		return root 
	end  
end
puts lowest_common_ancestor(node2, node1, node3).val



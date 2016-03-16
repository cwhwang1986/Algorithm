=begin
     4
   /   \
  2     7
 / \   / \
1   3 6   9

 	 4
   /   \
  7     2
 / \   / \
9   6 3   1
	
=end

def invert_tree(root)
	return root if !root
	left = root.left
	right = root.right
	root.right = left
	root.left = right
	invert_tree(root.left)
	invert_tree(root.right)
	return root
end
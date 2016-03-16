=begin
	
Given two binary trees, write a function to check if they are equal or not.
Two binary trees are considered equal if they are structurally identical and 
the nodes have the same value.
	
=end
def is_same_tree(p, q)
	if (!p && !q) 
		return true
	elsif (!p || !q)
		return false
	else
		return p.val === q.val && is_same_tree(p.left, q.left) && is_same_tree(p.right, q.right)
	end
end

if 0 
	puts 'yo'
end
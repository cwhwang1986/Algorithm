=begin
	
input: node


Ex: 2->3->5->7


=end
class ListNode
	attr_accessor: :val, :next
	def initialize(val, next)
		@val = val
		@next = next
	end
end

def delete_node(node)
	node.val = node.next.val
	node.next = node.next.next
end
=begin
	
Reverse a singly linked list.

5->4->3
5

=end

class ListNode
	attr_accessor :val, :next
	def initialize
		@val = val
		@next = nil
	end
end
node1 = ListNode.new
node1.val = 2
node2 = ListNode.new
node2.val = 3
node2.next = node1

node3 = node2
puts node3.next.val

def reverse_list(head, prev=nil)
	return head if (!head || !head.next) && !prev
    return prev if !head
	newHead = reverse_list(head.next, head)
	head.next = prev if prev 
	head.next = nil	if !prev
	return newHead
end 	

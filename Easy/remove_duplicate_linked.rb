=begin
	
Given a sorted linked list, delete all duplicates such that each element appear only once.

For example,
Given 1->1->2, return 1->2.
Given 1->1->2->3->3, return 1->2->3.




=end
class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end
def delete_duplicates(head, isHead=true)
	return head if (!head || !head.next) && isHead
	actualHead = head if isHead
	if head.next
		delete_duplicates(head.next) if head.next.next
		if head.val == head.next.val
			head.next = head.next.next
		end
	end
	return actualHead
end
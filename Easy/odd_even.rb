=begin
	
Given 1->2->3->4->5->NULL,
return 1->3->5->2->4->NULL.

O(1) space and O(n) time

  2	
1   => 1->3->2
  3

1 2 3 4 5 6
  2 -> 4
1
  3 -> 5
headeven
last odd
stop case
if no next then 
	lastodde next should point to headeven

=end

class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end
def odd_even_list(head, isHead=true, evenHead=nil, isEven=1)
    return head if (!head || !head.next) && isHead
    evenHead = head.next if isHead && head.next
    if head.next && head.next.next 
    	orig_next = head.next
    	head.next = head.next.next
    	odd_even_list(orig_next, false, evenHead, isEven+1)
    else
    	if isEven % 2 == 0
    		odd_even_list(head.next, false, evenHead, isEven+1)	
    		head.next = nil
    	else
    		head.next = evenHead
    	end
    end 
    return head
end

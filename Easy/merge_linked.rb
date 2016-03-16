=begin
	
1->2->5
3->4->6

find the head

=end


class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def merge_two_lists(nodeA, nodeB, head=nil, prev=nil)
	if !nodeA && !nodeB
        return nodeA
    elsif !nodeA && nodeB 
        prev.next = nodeB if prev
        return nodeB if !prev
    elsif !nodeB && nodeA 
        prev.next = nodeA if prev
        return nodeA if !prev
    elsif !prev && nodeA && nodeB
        if nodeA.val > nodeB.val
            head = nodeB
            merge_two_lists(nodeA, nodeB.next, head, head)
        else 
            nodeA.val <= nodeB.val
            head = nodeA
            merge_two_lists(nodeA.next, nodeB, head, head)
        end
    elsif prev && nodeA.val <= nodeB.val
        prev.next = nodeA
        merge_two_lists(nodeA.next, nodeB, head, nodeA)
    elsif prev && nodeA.val > nodeB.val
        prev.next = nodeB
        merge_two_lists(nodeB.next, nodeA, head, nodeB)
    end
    return head
end



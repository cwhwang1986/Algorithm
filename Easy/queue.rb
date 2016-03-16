=begin
	
Implement the following operations of a queue using stacks.

push(x) -- Push element x to the back of queue.
pop() -- Removes the element from in front of queue.
peek() -- Get the front element.
empty() -- Return whether the queue is empty.
	
=end

class Queue
    # Initialize your data structure here.
    attr_accessor :size
    def initialize
        @stack = []
        @size = 0
    end

    # @param {Integer} x
    # @return {void}
    def push(x)
        @stack.push(x)
        @size += 1
    end

    # @return {void}
    def pop
        @stack.shift
        @size -= 1 if @size >= 1
    end

    # @return {Integer}
    def peek
        return @stack[0]
    end

    # @return {Boolean}
    def empty
        return @size == 0
    end
end
p 'hello'
queue = Queue.new
p queue.empty
queue.push(2)
queue.push(3)
queue.push(5)
p queue.peek
p queue.size
p queue.pop
p queue.peek
p queue.size
p queue.empty


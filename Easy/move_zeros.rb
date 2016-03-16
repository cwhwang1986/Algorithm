=begin

Given an array nums, write a function to move all 0's to the end of it while 
maintaining the relative order of the non-zero elements.
For example, given nums = [0, 1, 0, 3, 12], after calling your function, nums 
should be [1, 3, 12, 0, 0].

You must do this in-place without making a copy of the array.
Minimize the total number of operations.

=end

def move_zeroes(nums)
	arr1 = nums.select { |a| a== 0 }
	nums.select! { |a| a != 0 }
	return nums.concat(arr1)
end

# arry = [1,2,0,30,0]
# puts arry.drop_while {|ele| ele < 1}
# puts arry
puts move_zeroes([1, 2, 0, 30, 0])
 

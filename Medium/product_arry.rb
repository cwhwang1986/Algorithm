=begin
	
Given an array of n integers where n > 1, nums, return an array output such that 
output[i] is equal to the product of all the elements of nums except nums[i].

Solve it without division and in O(n).

For example, given [1,2,3,4], return [24,12,8,6].
	
=end

def product_except_self(nums)
	len = nums.length
	all = 1
	numOf0 = 0
	len.times do|i| 
		if nums[i] != 0
			all *= nums[i] 
		else
			numOf0 += 1
		end
	end
	if numOf0 == 0
		return nums.map {|ele| all/ele}
	elsif numOf0 == 1
	 	return nums.map {|ele| ele == 0 ? all : 0}
	else 
		return [0] * len
	end
end
p product_except_self([1,0])

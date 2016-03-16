=begin
	
Given an array of integers, every element appears twice except for one. 
Find that single one.
Your algorithm should have a linear runtime complexity. 
Could you implement it without using extra memory?

[3,2,1,2,3,4,5,4,5,7,1] => 7

=end

def single_number(nums)
	map = {}
	for idx in 0...nums.length
		if !map[nums[idx]]
			map[nums[idx]] = true 
		else
			map.delete(nums[idx])
		end
	end
	result = nil
	map.each {|k, v| result = k}
	return result
end

p single_number([3,1,3])
# p single_number([3,2,1,2,3,4,5,4,5,7,1])
=begin
	
Given an array of size n, find the majority element. The majority element is 
the element that appears more than ⌊ n/2 ⌋ times. You may assume that the array
is non-empty and the majority element always exist in the array.

=end

def majority_element(nums)
	element_counter = {}
	result = nil
	return nums[0] if nums.size == 1
	nums.each do |ele|
		if element_counter[ele] && (element_counter[ele] + 1 > nums.size / 2)
			result = ele
			break
		elsif !element_counter[ele]
			element_counter[ele] = 1
		else
			element_counter[ele] += 1
		end
	end
	return result    
end

puts majority_element([1,3,5,7,9,4,2,3,3,4,3,3,3,3,3,3,3,5])
puts majority_element([1])
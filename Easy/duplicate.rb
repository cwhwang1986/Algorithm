=begin
	
Given an array of integers, find if the array contains any duplicates. 
Your function should return true if any value appears at least twice in the 
array, and it should return false if every element is distinct
	
=end
def contains_duplicate(nums)
	dictionary = {}
	result = false
	nums.each do |num|
		if !dictionary[num]
			dictionary[num] = true
		else
			result = true
			break
		end
	end
	return result
end
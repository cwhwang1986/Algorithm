=begin
	
Given an integer, write a function to determine if it is a power of three.
Do without using any loop / recursion?

Input: int
Output : boolean

9 => true
8 => false
4 => false
81 = > true

81 -> 27 -> 9 -> 3 -> 1

=end

def is_power_of_three(n, stop=true)
	while stop do
		if n == 1
			stop = false
			return true
		elsif n % 3 == 0
			n /= 3
		else 
			return false
		end
	end    
end

p is_power_of_three(12)
p is_power_of_three(9)
p is_power_of_three(81)
p is_power_of_three(122)
p is_power_of_three(75)
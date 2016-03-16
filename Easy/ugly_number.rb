=begin
	
Write a program to check whether a given number is an ugly number.
Ugly numbers are positive numbers whose prime factors only include 2, 3, 5. 
For example, 6, 8 are ugly while 14 is not ugly since it includes another prime factor 7.
Note that 1 is typically treated as an ugly number.

6 = 2 * 3
8 = 2 * 2 * 2
14 = 2 * 7
10 = 2 * 5
12 = 2 * 2 * 3
28 = 2 * 2 * 7
100 = 5 * 5 * 2 * 2
=end

def is_ugly(num, stop=false)
	return true if [1,2,3,5].index(num) != nil
	return false if num == 0
	while !stop do 
		if num%2 == 0
			num /= 2
		elsif num% 3 == 0
			num /= 3
		elsif num% 5 == 0
			num /= 5
		else
			stop = true  
		end
	end
	return num == 1
end
# 
p is_ugly(6)
p is_ugly(8)
p is_ugly(14)
p is_ugly(10)
p is_ugly(22)
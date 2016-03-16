=begin
	
There are n bulbs that are initially off. You first turn on all the bulbs. 
Then, you turn off every second bulb. On the third round, you toggle every third 
bulb (turning on if it's off or turning off if it's on). For the ith round, 
you toggle every i bulb. For the nth round, you only toggle the last bulb. 
Find how many bulbs are on after n rounds.

ex. Given n = 3. 

At first, the three bulbs are [off, off, off].
After first round, the three bulbs are [on, on, on].
After second round, the three bulbs are [on, off, on].
After third round, the three bulbs are [on, off, off]. 

So you should return 1, because there is only one bulb is on.

on => 1
off => 0

turn off all the prime number
 

=end
require 'prime'
def bulb_switch(n)
	return n if n <= 0
	return 1 if n == 1
	result = 1
	2.upto(n) do |i|
		if !Prime.prime?(i)
			toggleTimes = i.prime_division.length
			if (toggleTimes + 1) % 2 == 0
				result += 1 
			end
		end
	end
    return result
end


p bulb_switch(100000)




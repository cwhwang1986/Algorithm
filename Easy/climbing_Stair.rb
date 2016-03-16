=begin
	
You are climbing a stair case. It takes n steps to reach to the top.
Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?
		 0
	 1       2
   1   2   1   2
  1         2 1 2
 1  	   1 1

Each time you have two choices
When reach to the end, counter++

=end

def climb_stairs(n, cache=nil)
	cache = {} if !cache
	if n == 1 || n == 2
		return n
	end
	if !cache[n]
		cache[n] = climb_stairs(n - 1, cache) + climb_stairs(n - 2, cache) 
	end
	return cache[n]
end

p climb_stairs(5)
p climb_stairs(15)
p climb_stairs(35)
 


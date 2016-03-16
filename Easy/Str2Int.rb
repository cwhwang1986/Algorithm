=begin
	
Convert integer to string

input "2541"
output 2541

1. white space
2.plus sign or minus 
	
=end

def my_atoi(str)
	result = 0
	return result if !str.is_a? String
	strArry = str.split('')
	newArry = []
	power = 0
	start = false
	for idx in 0...strArry.length
		if (strArry[idx] == '-' || strArry[idx] == '+') && !start
			start = true
			isNegative = true if strArry[idx] == '-' 
		elsif strArry[idx].ord > 47 && strArry[idx].ord < 58
			newArry.push(strArry[idx])
			start = true
			power += 1
		elsif (start && power == 0) || (strArry[idx] != ' ') || (strArry[idx] == ' ' && power > 0)
			break
		end

	end
	newArry.each do |char|
		result += 10** (power-1) * (char.ord-48)
		power -= 1
	end
	result = isNegative ? result * -1 : result
	result = 2147483647 if result > 2147483647
	result = -2147483648 if result <= -2147483649
	return result    
end

p my_atoi('    010')
p my_atoi('- g2147483648')
p my_atoi('-g2147483648')
p my_atoi('g2147483648')



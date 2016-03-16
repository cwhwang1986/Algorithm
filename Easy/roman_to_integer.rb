=begin
	
Given a roman numeral, convert it to an integer.
Input is guaranteed to be within the range from 1 to 3999.

input roman string
output number

eg. 
I   	->  1
II  	->  2  
III 	->  3
IV		->	4
V		->	5
VI 		->  6
VII     ->  7
VIII    ->  8
IX      ->  9
X       ->  10
L		->  50
C		->  100
D       ->  500
M       ->  1000

[V, X, L, C, D, M]

LXXXIV
=end

def roman_to_int(s)
	return 0 if s == '' || !s 
	dictionary = {
		I: 1,
		V: 5,
		X: 10,
		L: 50,
		C: 100,
		D: 500,
		M: 1000
	}
	output = dictionary[s[s.length - 1].to_sym]
	(s.length - 2).downto(0) do |idx|
		if dictionary[s[idx].to_sym] >= dictionary[s[idx + 1].to_sym]
			output += dictionary[s[idx].to_sym]
		else
			output -= dictionary[s[idx].to_sym]
		end
	end
	return output
end

puts roman_to_int('LXXXIV')

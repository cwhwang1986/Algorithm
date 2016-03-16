=begin
Write a function that takes an unsigned integer and returns the number of ’1' bits it has
	
11 => 00000000000000000000000000001011 should return 3

11 / 2 = 5 ... 1
5 / 2 = 2 ... 1
2 / 2 = 1 ... 0
1 / 2 = 0 ... 1

13 / 2 = 6 ... 1
6 / 2 = 3 ... 0
3 / 2 = 1 ... 1
1 / 2 = 0 ... 1

 

convert number into bit

=end
def hamming_weight(n, result=0)
    return result if n == 0
    result += n % 2
    return hamming_weight((n/2).floor, result)
end



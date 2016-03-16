def title_to_number(s)
	return nil if s == nil || s == ''
    result = 0
    expo = 0
    (s.length - 1).downto(0) do |i|
    	result += (s[i].ord % 'A'.ord + 1) * (26**expo)
    	expo += 1
    end
    return result
end

p title_to_number('AA')
p title_to_number('Z')
p title_to_number('BB')
p 'AABB'.split('')

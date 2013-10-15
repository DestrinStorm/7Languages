#Using each - this is painful
a = (1..16).to_a
count = 0
set = []
a.each do
	|n|
	set[count] = n
	count = count + 1
	if count == 4 then
		p set 
		set = []
		count = 0
		end
	end

#Using each_slice - this is nice
(1..16).each_slice(4) {|n| p n}
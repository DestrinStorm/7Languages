File.open("testfile.txt", "r") do |file|
expression = /file/
i=0
file.each do |line|
	i = i+1
	if line =~ expression then
		puts i
		puts line
		end
	end
end
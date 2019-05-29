puts "Enter the string"
strr = gets.chomp
arr = strr.gsub(/[^a-zA-z\s]/," ")
arr = arr.gsub("^", "").split
i = 0; word = ""
while (i <= arr.length-1)
	if(word.length < arr[i].length)
		word = arr[i]
	end
	i +=1
end
puts ("the largest word is #{word}")
puts ("And its length is #{word.length}")
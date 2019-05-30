#wordy arithmatic calculation
puts "enter the question"
a = gets.chomp('?')
a = a.split
a[a.size-1] = a.last.chomp('?')
arr_value = Array.new
arr_operation = Array.new
a.each_with_index {|var,index|
	if (var.to_i.to_s==var )
		# puts "i am in #{var}"
		arr_value << var.to_i
		arr_operation << a[index+1]
		elsif (var.include?("-") )
			arr_value << (var.to_i*(-1))
			arr_operation << a[index+1]
			# puts "i am in #{arr_operation.last}"
		elsif (var.include?("th") && a[index+1] == "power")
			arr_value <<  (var.chomp("th").to_i)
			# puts "i am in #{arr_value.last}"
				

	end
}
final, i = arr_value.last, arr_operation.length-1
while(i >=0)
	x = arr_operation[i]
case x
when "plus"
  final = final + arr_value[i]
when "minus"
  final = arr_value[i] - final
when "multiplied"
	final = final * arr_value[i]
when "divided"
  final = arr_value[i] / final
when "raised"
  final = arr_value[i] ** final
end	
	i -=1
end
puts final

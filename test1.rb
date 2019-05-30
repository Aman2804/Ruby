public def repeat1(count)
	count=count.to_i
  e= Array.new(count,self).join(",")
  p e.split(',')
end
[1,2,3].repeat1(3)
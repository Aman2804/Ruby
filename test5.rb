class Calculator_prob
  def arithmatic_calculation()
    puts "Enter the Question"
    a = gets.chomp
    a = a.chomp("?")
    a = a.split
    a = a.select do |x|
      (x =~/\d/ || x =~ /[-]\d/ || x =~/(plus|minus|multiplied|devided|raised)/ )
      end
    final,i = a.last.to_i,(a.length-1)/2
    while (i > 0)
      x = a[(2*i-1)]
      case x
      when "plus"
      final = final + a[2*i-2].to_i
      when "minus"
      final = a[2*i-2].to_i - final
      when "multiplied"
      final = final * a[2*i-2].to_i
      when "divided"
      final = a[2*i-2].to_i / final
      when "raised"
      final = a[2*i-2].to_i ** final
      end 
      i -=1
    end
    puts final
  end
end
obj = Calculator_prob.new
obj.arithmatic_calculation()
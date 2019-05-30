public def upcase1(cha)
    arr = self.split('')
    final = ""
    arr.each {|c|
        if (c==cha)
            final << c.capitalize
        else
            final << c
        end
    }
    puts final
end
"aman".upcase1("a")
def caesar_cipher(string, key)
    string = string.split("").map {|e| 
       e = e.ord
       if (65..90).include?(e)
           e += key
           while e > 90
            e = e - 26
           end
        elsif (97..112).include?(e)  
            e += key
            while e > 112
                e = e - 26
            end
        end
        e.chr
    }
    puts string.join
end

caesar_cipher("What a string!", 5)
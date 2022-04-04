def caesar_cipher(string, key)
    string = string.split("").map {|e| 
       e = e.ord
       if (65..90).include?(e)
           e += key
           while e > 90
            e = e - 26
           end
        elsif (97..122).include?(e)  
            e += key
            while e > 122
                e = e - 26
            end
        end
        e.chr
    }
    return string.join
end

p caesar_cipher("What a string!", 5)
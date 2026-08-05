def caesar_cipher(text,factor)
    #arrays we need
    message_text=[]
    message_ord=[]
    cipher_ord=[]
    cipher_text=[]

    #transfering each letter of the string in an array
    message_text=text.chars
    puts message_text

    #from letter to ascii
    for i in message_text
        message_ord.push(i.ord)
    end

    puts message_ord

    for i in message_ord
        
        y = i + factor.to_i

        #upcase
        if i.between?(65,90)
        
            if y > 90
               y=y-90
               y+=65        
            end

            cipher_ord.push(y)
            puts cipher_ord
            
        #downcase
        elsif i.between?(97,122)
            
            if y > 122
               y=y-122
               y+=97
            end

            cipher_ord.push(y)
            puts cipher_ord
        
        #not a letter
        else
            cipher_ord.push(i)
            puts cipher_ord
        end
    end

    #from ascii to letter
    for i in cipher_ord
        puts i
        cipher_text.push(i.chr)
        puts cipher_text
    end

    #converting array in string
    final_text=cipher_text.join(separator = "")

    puts ("The original message is #{text}")
    puts ("The ciphered message is #{final_text}")
end

puts ("Enter the message to cipher")
a=gets.chomp
puts ("Enter the factor")
b=gets.chomp

caesar_cipher(a,b)




# --- Part Two ---
# While it appears you validated the passwords correctly, they don't seem to be what the Official Toboggan Corporate Authentication System is expecting.

# The shopkeeper suddenly realizes that he just accidentally explained the password policy rules from his old job at the sled rental place down the street! The Official Toboggan Corporate Policy actually works a little differently.

# Each policy actually describes two positions in the password, where 1 means the first character, 2 means the second character, and so on. (Be careful; Toboggan Corporate Policies have no concept of "index zero"!) Exactly one of these positions must contain the given letter. Other occurrences of the letter are irrelevant for the purposes of policy enforcement.

# Given the same example list from above:

# 1-3 a: abcde is valid: position 1 contains a and position 3 does not.
# 1-3 b: cdefg is invalid: neither position 1 nor position 3 contains b.
# 2-9 c: ccccccccc is invalid: both position 2 and position 9 contain c.
# How many passwords are valid according to the new interpretation of the policies?


def read_file(filename)
    @contador_valido = 0
    original_data = open(filename).readlines
    lines = original_data.count
    array = []
  lines.times do |i|
        datos = original_data[i].split(" ")
        lineas = datos.count 
        lineas.times do |x|
            if x == 0 
                lineas2 = datos[x].split("-")
                2.times do |j|
                    if j == 0
                        @min = lineas2[j].to_i
                    else  
                        @max = lineas2[j].to_i 
                    end 
                end
            elsif x == 1 
                linea3 = datos[x].split(":")
                1.times do |k| 
                    @letra = linea3[k].to_s
                end
            elsif x == 2 
               linea5 = (datos[x].length)
             
               linea4 = datos[x].split("")
              
                @contador_casi = 0
                linea5.times do |h| 
                   
                    if @min == (h+1) && @letra == linea4[h].to_s
                         @contador_casi += 1
                     
                    elsif @max == (h+1) && @letra != linea4[h].to_s 
                         @contador_casi += 1 
                    end 
                    if @contador_casi == 2 
                        
                        @contador_valido += 1
                        puts "#{datos[x]} vali: #{@contador_valido} letra : #{@letra} #{@min} #{@max}"
                         @contador_casi = 0
                    end 
                end 
                
             
            end 
            
        end  
        
    end
    puts @contador_valido 
end

read_file("dosb.data")

@b = 3
@contador_a = 0
def read_file(filename)
    cont = 0
    original_data = open(filename).readlines
    lines = original_data.count
    contador_b = 0
    lines = 19
    i = 0 
    while i < lines do   
   #lines.times do |i|
        contador_b += 1
        j = 0
       

        while j < original_data[i].length do
           
            if j == @b && cont == 0
                cont +=1
                j += 1     
                break
            end 
            if j == @b && cont == 1 
                if original_data[i][j] == "#"
                     puts "#{original_data[i][j]} hay un arbol # en la linea #{i+1}" 
                    @contador_a += 1 
                    j += 1 
                    break
                end 
                j += 1     
                break
            end   
            j += 1     
        
        end
        if @b >= 30
            @b = 3 
            i -= 1
        elsif contador_b == 1 
            @b = 3
        else
            @b += 3 

        end 
        
        i += 1
    end
    puts "hay #{@contador_a} arboles "
end

read_file("tres.data")
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
                 contador = datos[x].count(@letra)
                if contador >= @min && contador <= @max 
                    @contador_valido += 1
                end 
            end 
        end  
        
    end
    puts @contador_valido 
end

read_file("dos.data")


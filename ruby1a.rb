def read_file(filename)
    original_data = open(filename).readlines
    lines = original_data.count
    array = []
    lines.times do |i|
        a = 1
        while a < lines do
            suma = original_data[i].to_i + original_data[a].to_i
            if suma == 2020 
               puts original_data[a].to_i 
               puts original_data[i].to_i
               puts original_data[a].to_i * original_data[i].to_i 
                break
            else 
                a += 1;
            end 
        end
      
    end
end

read_file("lista2dic.data")
def read_file(filename)
    original_data = open(filename).readlines
    lines = original_data.count
    array = []
    1.times do |i|
        a = 0
        while a < lines do
            b = 0
            while b < lines do 
                suma = original_data[i].to_i + original_data[a].to_i + original_data[b].to_i
                if suma == 2020 
                puts original_data[a].to_i 
                puts original_data[i].to_i
                puts original_data[b].to_i
                puts original_data[a].to_i * original_data[i].to_i * original_data[b].to_i
                    break
                else 
                    b += 1;
                
                end
            end
            a += 1;
        end
      
    end
end

read_file("lista2dic.data")
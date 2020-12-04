data = File.open("lista2dic.data").readlines
data.map!{|linea| linea.split("\n")}


def encontrar2020(arr)
 
    arr.each do |x|
        a = 1
        while a < (arr.length - 1) do
            suma = arr[x].to_i + arr[a].to_i
            if suma == 2020 
               print arr[a].to_i  
               print arr[x].to_i
                break
            else 
                a += 1;
            end 
        end
      
    end
end

encontrar2020(data)
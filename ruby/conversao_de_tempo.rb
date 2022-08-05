#beecrowd | 1019 - Conversão de Tempo
def calculo(segundos)
    h = segundos / 3600;
    
    resto = segundos % 3600;
    
    m = resto / 60;
    
    s = resto % 60;
    
    puts"#{h}:#{m}:#{s}"
end
    
valor = gets.strip.to_i
    
calculo(valor)
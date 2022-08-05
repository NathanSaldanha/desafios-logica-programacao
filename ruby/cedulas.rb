# BEE 1018  |   Cédulas
def calculo(valor)
    puts valor
    puts "#{valor/100} nota(s) de R$ 100,00"
    valor = valor%100
    
    puts "#{valor/50} nota(s) de R$ 50,00"
    valor = valor%50
    
    puts "#{valor/20} nota(s) de R$ 20,00"
    valor = valor%20
    
    puts "#{valor/10} nota(s) de R$ 10,00"
    valor = valor%10
    
    puts "#{valor/5} nota(s) de R$ 5,00"
    valor = valor%5
    
    puts "#{valor/2} nota(s) de R$ 2,00"
    valor = valor%2
    
    puts "#{valor/1} nota(s) de R$ 1,00"
  end
  
  valor = 0
  
loop do   
    valor = gets.strip.to_i
    if valor > 0 and valor < 1000000
      break
    end
end
  
calculo(valor)
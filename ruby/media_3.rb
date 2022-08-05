#beecrowd | 1040 - Média 3

def aprovacao(media)
    if media >= 7
      "Aluno aprovado."
    else
      "Aluno reprovado."
    end
end
  
def refazer_exame(media)
    if media >= 5
      "Aluno aprovado."
    else
      "Aluno reprovado."
    end
end
  
def calculo(notas)
    media  = notas[:x1]*2
    media  += notas[:x2]*3
    media  += notas[:x3]*4
    media  += notas[:x4]*1
    media  /=10
    puts "Media: %0.1f" % media
  
    if media >= 5.0 and media <= 6.9
      puts "Aluno em exame."
      x5 = gets.strip.to_f
      puts "Nota do exame: %0.1f" % x5
      media = (x5+media)/2
      puts refazer_exame(media)
      "Media final: %0.1f" % media
    else
      aprovacao(media)
    end
end
    
x1, x2, x3, x4, x5 = gets.strip.split(' ')
notas = {x1: x1.to_f,
        x2: x2.to_f,
        x3: x3.to_f,
        x4: x4.to_f,
        x5: x5.to_f}
  
puts calculo(notas)
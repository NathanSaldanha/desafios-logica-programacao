t = gets.strip.to_i
resultado = ""

t.times do |num|
	linha = gets.strip.split(' ')
	pa, pb, g1, g2 = linha

	pa = pa.to_i
	pb = pb.to_i
	g1 = g1.to_f
	g2 = g2.to_f

	count = 0

	while pa <= pb and count <= 101 #complete o while
		
		pa +=((pa*g1).to_i / 100)
	    pb +=((pb*g2).to_i / 100)

		count += 1

	end

	if count <= 100 #insira o valor correto
		resultado << "#{count} anos.\n"  #complete o codigo #complete o codigo
	else
		resultado << "Mais de 1 seculo.\n" #complete a saida
	end
	count = 0
end
puts resultado

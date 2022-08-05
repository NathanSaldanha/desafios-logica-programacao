# beecrowd | 1015 - Distância Entre Dois Pontos
def calculo(x1, x2, y1, y2)
	return Math.sqrt(((x2 - x1)**2) + ((y2 - y1)**2))
end

x1, y1 = gets.strip.split(' ')
x2, y2 = gets.strip.split(' ')

x1 = x1.to_f
x2 = x2.to_f
y1 = y1.to_f
y2 = y2.to_f

x = calculo(x1, x2, y1, y2)

puts "%0.4f" % x
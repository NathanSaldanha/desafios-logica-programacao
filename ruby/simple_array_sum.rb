#!/bin/ruby

require 'json'
require 'stringio'

# Recebe um array de inteiros e retorna a soma de todos os seus elementos.
def simpleArraySum(ar)
    ar.sum
end

# Se OUTPUT_PATH estiver definido (ambiente HackerRank), escreve em arquivo; caso contrário, usa o terminal.
fptr = ENV['OUTPUT_PATH'] ? File.open(ENV['OUTPUT_PATH'], 'w') : $stdout

# Quantidade de elementos do array (primeira linha do input, convertida para inteiro).
ar_count = gets.strip.to_i

# Elementos do array (segunda linha do input): divide a string em tokens e converte cada um para inteiro.
ar = gets.rstrip.split.map(&:to_i)

# Chama a função e armazena o resultado.
result = simpleArraySum ar

fptr.write result
fptr.write "\n"

# Fecha o arquivo apenas se não for o stdout, para evitar erros.
fptr.close() unless fptr == $stdout

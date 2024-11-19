require 'drb/drb'

URI = "druby://localhost:3000"

jogo = DRbObject.new_with_uri(URI)

puts "Jogador 1, escolha entre 'pedra', 'papel' ou 'tesoura':"
p1 = gets.chomp.downcase
puts "Jogador 2, escolha entre 'pedra', 'papel' ou 'tesoura':"
p2 = gets.chomp.downcase

result = jogo.winner(p1, p2)

puts result
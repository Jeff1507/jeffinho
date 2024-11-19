require 'drb/drb'

URI = "druby://localhost:3000"

class Jokenpo
  def winner(p1, p2)
    op = ['pedra', 'papel', 'tesoura']

    if p1 == p2
      return "Empate!"
    elsif (p1 == 'pedra' && p2 == 'tesoura') || (p1 == 'tesoura'&& p2 == 'papel') || (p1 == 'papel' && p2 == 'pedra')
      return "Jogador 1 venceu!"
    else
      return "Jogador 2 venceu!"
    end
  end
end

DRb.start_service(URI, Jokenpo.new)
puts 'Servidor iniciado.'
DRb.thread.join

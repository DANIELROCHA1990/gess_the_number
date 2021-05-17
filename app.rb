require_relative './lib/adivinhar_numero.rb'
game = Game.new

until game.win do
    puts 'Adivinhe um número'
    numero = gets.chomp.to_i
    
    puts game.tentar_adivinhar(numero)
end
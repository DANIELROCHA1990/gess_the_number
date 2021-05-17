require_relative './inicializando.rb'

class Game
    attr_reader :number
    attr_reader :win

    def initialize
        StartGame.initializing
        @number = Random.rand(1..10)
        @win = false
    end

    def tentar_adivinhar(number = 0)
        if number == @number
            @win = true
            puts 'You Win!'
        elsif number > @number
            puts 'Você digitou um número maior, tente novamente'
        else
            puts 'Você digitou um número menor, tente novamente'
        end
    end
end
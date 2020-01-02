require_relative 'player.rb'

class Blackjack

    def initialize(dealer = Player.new)
      @player = nil
      @dealer = dealer
    end 

    def player(name)
        @name = name
    end
end

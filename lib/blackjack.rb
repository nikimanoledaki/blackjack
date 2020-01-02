require_relative 'player.rb'
require_relative 'deck.rb'

class Blackjack
    attr_reader :player, :player_hand, :dealer, :dealer_hand, :deck

    def initialize(dealer = Player.new)
      @player = nil
      @player_hand = []
      @dealer = dealer
      @dealer_hand = []
      @deck = Deck.new
    end 

    def player(name = Player.new)
      @name = name
    end

    def start
      2.times do 
        @player_hand << @deck.random_card
        @dealer_hand << @deck.random_card
      end
    end
    
end

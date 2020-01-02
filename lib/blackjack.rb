require_relative 'player.rb'
require_relative 'deck.rb'

class Blackjack
    attr_reader :player, :player_hand, :dealer, :dealer_hand, :deck, :score

    def initialize(dealer = Player.new, player = Player.new, deck = Deck.new)
      @player = player
      @player_hand = []
      @dealer = dealer
      @dealer_hand = []
      @deck = deck
      @score = 0
    end 

    def start
      2.times do 
        @player_hand << draw
        @dealer_hand << draw
      end
    end

    def draw
      @deck.random_card
    end

    def score(hand)
      hand.each {|x| @score += deck.value(x) }
      @score
    end

    def victory?
        true if @score == 21
    end
    
end

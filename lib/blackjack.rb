require_relative 'player.rb'
require_relative 'deck.rb'

class Blackjack
    attr_reader :player, :dealer, :deck

    def initialize(dealer = Player.new, player = Player.new, deck = Deck.new)
      @player = player
      @dealer = dealer
      @deck = deck
    end

    def first_hand
      2.times do 
        @player.hand << draw
        @dealer.hand << draw
      end
    end

    def score(turn)
      @turn.hand.each {|x| @turn.total += deck.value(x) }
      @turn.total
    end

    def victory?(turn)
      true if @turn.total == 21
    end

    def draw
      @deck.random_card
    end

    def run
      first_hand
      score(player)
      victory?
    end

end

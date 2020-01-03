require_relative 'player.rb'
require_relative 'deck.rb'

class Blackjack
    attr_reader :player, :player_hand, :dealer, :dealer_hand, :deck, :total

    def initialize(dealer = Player.new, player = Player.new, deck = Deck.new)
      @player = player
      @player_hand = []
      @dealer = dealer
      @dealer_hand = []
      @deck = deck
      @total = 0
    end 

    def start
      2.times { @player_hand << draw }
      2.times { @dealer_hand << draw }
    end

    def score(hand)
      hand.each {|x| @total += deck.value(x) }
      @total
    end

    def victory?
      true if @total == 21
    end

    def draw
      @deck.random_card
    end

    def run_game
      start
      score(player_hand)
      victory?
      p @total
    end

end

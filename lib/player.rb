require_relative 'deck.rb'

class Player

  attr_reader :deck, :hand

  def initialize
    @deck = Deck.new
    @hand = []
    start
  end

  def start
    @hand << @deck.random_card
    @hand << @deck.random_card
  end

end
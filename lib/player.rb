require_relative 'deck.rb'

class Player

  attr_reader :hand, :total

  def initialize
    @hand = []
    @total = 0
  end

end

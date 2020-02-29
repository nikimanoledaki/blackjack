require 'blackjack'

describe Blackjack do

  describe '#first_hand' do
    it 'gives two cards from the deck to each' do
      expect{ subject.first_hand }.to change{ subject.player.hand }
    end
  end

  describe '#draw' do
    it 'adds a card to hand' do
      expect(subject.draw).to be_a(String)
    end
  end

  describe '#score' do
    it 'calculates the score' do
      subject.first_hand
      player = Player.new
      expect(subject.score(player)).to eq 9
    end
  end

  describe '#victory?' do
    it 'checks if either player has blackjack (21)' do
      hand = ["queen", "ace"]
      subject.score(hand)
      expect(subject.victory?).to be true
    end
  end

  describe '#run' do
    it 'starts game' do
      expect{ subject.run }.to change{ subject.player.hand }
    end

    it 'calculates player hand' do
      expect{ subject.run }.to change{ subject.player.total }
    end
  end

    # it 'runs game and player loses when score is over 21' do
    # end

end

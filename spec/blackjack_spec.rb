require 'blackjack'

describe Blackjack do

  describe '#start' do
    it 'gives two cards from the deck to each' do
      expect{ subject.start }.to change{ subject.player_hand }
    end
  end

  describe '#draw' do
    it 'adds a card to hand' do
      expect(subject.draw).to be_a(String)
    end
  end

  describe '#score' do
    it 'calculates the score' do
        hand = ["four", "five"]
        expect(subject.score(hand)).to eq 9
    end
  end

  describe '#victory?' do
      it 'checks if either player has blackjack (21)' do
          hand = ["queen", "ace"]
          subject.score(hand)
          expect(subject.victory?).to be true
      end
  end

end

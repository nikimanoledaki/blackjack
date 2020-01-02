require 'blackjack'

describe Blackjack do
  describe '#player' do
    it 'initializes a player' do
      sam = "Sam"
      expect(subject.player(sam)).to eq "Sam"
    end
  end

  describe '#start' do
    it 'gives two cards from the deck to each' do
      sam = "Sam"
      subject.player(sam)
      expect{ subject.start }.to change{ subject.player_hand }
    end
  end

#   describe '#draw' do
#     it 'adds a card to hand' do
#       expect{ subject.draw }.to change{ subject.player_hand }
#     end
#   end

end

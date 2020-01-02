require 'blackjack'

describe Blackjack do
  describe '#player' do
    it 'initializes a player' do
      sam = "Sam"
      expect(subject.player(sam)).to eq "Sam"
    end
  end
end

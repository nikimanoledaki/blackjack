require 'player'

describe Player do
  describe '#start' do
    it 'gives two cards from the shuffled deck of cards' do
      subject.start
      expect(subject.hand).not_to be_empty
    end
  end
end
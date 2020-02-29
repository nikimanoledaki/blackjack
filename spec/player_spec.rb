require 'player'

describe Player do
  describe 'initialize' do
    it 'initializes with a hand' do
      expect(subject.hand).to be_an(Array)
    end
  end
end
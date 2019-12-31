require 'deck'

describe Deck do
    describe '#random_card' do
        it 'creates a single deck of playing cards' do
            expect(subject.random_card).to be_a(String)
        end
    end
end
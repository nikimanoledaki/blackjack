require 'deck'

describe Deck do
    describe '#cards' do
        it 'creates a single deck of playing cards' do
            expect(subject.cards).to be_a(Array)
        end
    end
    
    describe '#random_card' do
        it 'generates a random card' do
            expect(subject.random_card).to be_a(String)
        end
    end
end
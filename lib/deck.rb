class Deck
    def random_card
        cards[rand(13)]
    end

    def cards
      cards = ["two", "three", "four", "five", "six", "seven",
      "eight", "nine", "ten", "jack", "queen", "king", "ace"]
    end
end
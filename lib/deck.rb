class Deck

    def cards
      cards = ["two", "three", "four", "five", "six", "seven",
      "eight", "nine", "ten", "jack", "queen", "king", "ace"]
    end

    def random_card
        cards[rand(13)]
    end
    
end

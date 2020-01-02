class Deck

    def cards
      cards = ["two", "three", "four", "five", "six", "seven",
      "eight", "nine", "ten", "jack", "queen", "king", "ace"]
    end

    def random_card
      cards[rand(13)]
    end

    def value(card)
      values = {"two" => 2, "three" => 3, "four" => 4, "five" => 5, "six" => 6, "seven" => 7,
      "eight" => 8, "nine" => 9, "ten" => 10, "jack" => 10, "queen" => 10, "king" => 10, "ace" => 11}
      values[card]
    end

end

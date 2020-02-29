# Blackjack

Play Blackjack from your CLI. Can you beat the dealer at 21?
======================================

## Get started
```
$ git clone https://github.com/nikimanoledaki/blackjack.git 
$ bundle install
$ irb -r ./lib/blackjack.rb
$ blackjack.first_hand
```

## How to test
```
$ rspec
```

## Structure
* The Deck class creates a single deck of playing cards. 

* Two players (called Sam and the Dealer) play against each other

* Each player is given two cards from the top of a shuffled deck of cards.

#### Rules to implement
* determine score of a hand[1]
* check if either player has blackjack (21) with their initial hand and wins the game
* if neither player has blackjack then Sam can start drawing cards from the top of the deck
* Sam should stop drawing cards from the deck if their total reaches 17 or higher
* Sam has lost the game if their total is higher than 21 

* when Sam has stopped drawing cards the Dealer can start drawing cards from the top of the deck
* the Dealer should stop drawing cards when their total is higher than Sam.
* the Dealer has lost the game if their total is higher than 21 
* determine which player wins the game

[1] Numbered cards are their point value. Jack, Queen and King count as 10 and Ace counts as 11.

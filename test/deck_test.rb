require 'test_helper'
require 'deck'

describe "A deck of cards with no jokers,kings,and queens, or aces" do
  it "has 36 cards" do
    deck = Deck.new
    deck.set_cards

    deck.cards.length.must_equal 36
  end
end

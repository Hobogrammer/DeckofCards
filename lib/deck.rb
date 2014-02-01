class Deck
  attr_accessor :cards

  def initialize
    @cards = {}
  end

  def set_cards
    suits = [ 'spades', 'hearts', 'diamonds', 'clubs']
    counter = 1
    suits.each do |suit|
      (2..10).each do |number|
        @cards["#{counter}"] = {  "suit" => "#{suit}", "number" => number }
        counter += 1
      end
    end
  end

  def shuffle_cards
    @cards = @cards.to_a.shuffle.to_h
  end

  def show_cards
    @cards.each do |k,v|
      puts "#{v['number']} of #{v['suit']}"
    end
  end
end

playing_cards = Deck.new
playing_cards.set_cards
playing_cards.show_cards
playing_cards.shuffle_cards
playing_cards.show_cards

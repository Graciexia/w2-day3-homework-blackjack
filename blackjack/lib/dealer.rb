require_relative 'deck'

class Dealer
  attr_accessor :deck, :score

  def initialize
    @score = 0
    @deck = Deck.new
    @dealer_hand_cards = Hand.new
  end

  def daw
    @deck.push.daw
  end

  def get
    @dealer_hand_cards.hand_count
  end

end

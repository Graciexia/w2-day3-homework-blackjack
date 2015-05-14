require_relative 'deck'
#require_relative 'dealer'

class Player
attr_accessor :score

  def initialize
    @player_hand_cards = Hand.new
    @score = 0
  end

  def get
    @player_hand_cards.hand_count

  end
end


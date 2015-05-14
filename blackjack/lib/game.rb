require_relative 'player'
require_relative 'card'
require_relative 'deck'
require_relative 'dealer'
require_relative 'hand'


class Game
  attr_accessor :deck, :player, :dealer

  def initialize
      @deck = Deck.new
      @player = Hand.new
      @dealer = Hand.new
  end
end

require_relative 'card'
require_relative 'deck'
require_relative 'hand'


class Game
  attr_accessor :deck, :player, :dealer

  def initialize
      @deck = Deck.new
      @player = Hand.new
      @dealer = Hand.new
  end

  def show_player_hand
    puts "Player's cards:"
    @player.show_hand(true)
    show_score(@player)
  end

  def show_dealer_hand(show_first_card = false)
    puts "Dealer's cards:"
    @dealer.show_hand(show_first_card)
  end

  def show_score(x)
    print "The score is "
    print x.current_score
  end

end

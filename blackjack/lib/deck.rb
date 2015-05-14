require_relative 'card'

class Deck

  def initialize
    @cards = Array.new
    suits = ["H", "D", "C", "S"]
    suits.each do |suit|
      (2..10).each do |name|
        @cards.push(Card.new(suit, name.to_s, name))
      end
      @cards.push(Card.new(suit, "J", 10))
      @cards.push(Card.new(suit, "Q", 10))
      @cards.push(Card.new(suit, "K", 10))
      @cards.push(Card.new(suit, "A", 11))
    end
    @cards.shuffle!
  end

  def draw
    @cards.pop
  end

  def count
    @cards.count
  end

end

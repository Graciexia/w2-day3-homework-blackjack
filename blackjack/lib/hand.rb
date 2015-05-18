require_relative 'card'

class Hand

  def initialize
    @hand_cards = Array.new
  end

  def add_card(card)
    @hand_cards.push(card)
  end

  def count
    @hand_cards.count
  end

  def show_hand(show_first_card)
    first_time_thru_loop = true
    @hand_cards.each do |card|
      if first_time_thru_loop == true
        if show_first_card == true
          print card.display
        else
          print card.display_hidden
        end
        first_time_thru_loop = false
      else
        print card.display
      end
    end
  end

  def current_score
    score = 0
    @hand_cards.each do |card|
      score = score + card.value
    end
    return score
  end

end

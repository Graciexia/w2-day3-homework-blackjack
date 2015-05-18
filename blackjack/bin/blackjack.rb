require_relative '../lib/game'

while true do
  mygame = Game.new
  # give the player and the deal each 2 cards
  2.times { mygame.player.add_card( mygame.deck.draw ) }
  2.times { mygame.dealer.add_card( mygame.deck.draw ) }

  mygame.show_dealer_hand
  print "\n\n"

  mygame.show_player_hand
  print "\n\n"

  if mygame.player.current_score == 21
    puts "Blackjack!!  The Player wins!!!"
  else
    while true do
      print "(H)it or (S)tand? -> "
      answer = gets.chomp
      answer.upcase!
      if answer == 'H'
        mygame.player.add_card( mygame.deck.draw )
        mygame.show_player_hand
        print "\n\n"
        if mygame.player.current_score > 21
          break
        end
      else
        break
      end
    end

    if mygame.player.current_score > 21
      puts "The Player busted.  The Dealer wins!!!"
    else
      mygame.show_dealer_hand (true)
      mygame.show_score(mygame.dealer)
      print "\n\n"
      while mygame.dealer.current_score <= 16 do
        puts "Dealer takes a card."
        mygame.dealer.add_card( mygame.deck.draw )
        mygame.show_dealer_hand (true)
        mygame.show_score(mygame.dealer)
        print "\n\n"
      end

      if mygame.dealer.current_score > 21
        puts "The Dealer busted.  The Player wins!!!"
      else
        if mygame.player.current_score > mygame.dealer.current_score
          puts "The Player has the higher hand.  The Player wins!!!"
        elsif mygame.player.current_score < mygame.dealer.current_score
          puts "The Dealer has the higher hand.  The Dealer wins!!!"
        else
          puts "The scores are tied.  Push (nobody wins)."
        end
      end
    end
  end

  print "\n\nDo you want to play again (y, n)? -> "
  answer = gets.chomp
  answer.upcase!
  if answer != 'Y'
    break
  end

end

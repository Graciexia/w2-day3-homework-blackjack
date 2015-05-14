require_relative '../lib/game'

mygame = Game.new
mygame.player.add_card( mygame.deck.draw )
mygame.player.add_card( mygame.deck.draw )
mygame.dealer.add_card( mygame.deck.draw )
mygame.dealer.add_card( mygame.deck.draw )

puts "Dealer's cards:"
mygame.dealer.show_hand(false)
print "\n\n"

puts "Player's cards:"
mygame.player.show_hand(true)
print "The score is "
print mygame.player.current_score
print "\n\n"

endloop = false
while ! endloop do
  print "(H)it or (S)tay? -> "
  answer = gets.chomp
  answer.upcase!
  if answer == 'H'
    mygame.player.add_card( mygame.deck.draw )
    puts "Player's cards:"
    mygame.player.show_hand(true)
    print "The score is "
    print mygame.player.current_score
    print "\n\n"
  else
    endloop = true
  end
end

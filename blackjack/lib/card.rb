class Card
  attr_reader :suit, :name, :value

  def initialize(suit,name,value)
    @suit = suit
    @name = name
    @value = value
    # if @name.to_i > 0
    #   @value = @name.to_i
    # elsif @name == "A"
    #   @value = 11
    # else
    #   @value = 10
    # end
  end

  def display
    display_name = @name
    if display_name.length == 1
      display_name = " " + display_name
    end
"""------------
| #{suit}          |
|            |
|            |
|     #{display_name}     |
|            |
|            |
|            |
|            |
 ------------
 """
  end

  def display_hidden
"""------------
||||||||||||||
||||||||||||||
||||||||||||||
||||||||||||||
||||||||||||||
||||||||||||||
||||||||||||||
||||||||||||||
 ------------
 """
  end

    # def displayed_value
    #   if @name = num
    #     @value = name
    #   elsif @name == "A"
    #     @value = 11
    #   else
    #     @value = 10
    #   end
    # end
end


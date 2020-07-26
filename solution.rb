class Deck 
  attr_accessor :cards
  @@all = []
  
  def initialize 
    @cards = []
    52.times {@cards << Card.new} 
    Deck.all << self
  end
  def self.all
    @@all
  end

  def choose_card
    @cards.pop
  end

end



class Card
  attr_accessor :suit, :rank
  @@all = []
  def initialize (suit=nil, rank=nil)
    @suit = suit
    @rank = rank

    Card.all << self
  end
  def self.all
    @@all
  end

  
end

class Deck
    
    def initialize
        @deck=[]
        ranks = %w{A 2 3 4 5 6 7 8 9 20 J Q K}
        suits = %w{Hearts Clubs Diamonds Spades}
        suits.each do |suit|
            ranks.each do|cardio|
            @deck<<Card.new(cardio,suit)
            end
        end
        @deck
    end

    def cards 
        @deck
    end

    def display_deck
        puts "#{@deck}"
    end

    def count_deck
        p @deck.count
    end

    def choose_card
        @deck.shift
    end

end

class Card 

    def initialize (suit, rank)
        @suit=suit
        @rank=rank
    end

    def rank
        @rank
    end

    def suit
        @suit
    end

end
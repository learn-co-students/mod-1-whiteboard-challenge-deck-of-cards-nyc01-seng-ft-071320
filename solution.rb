class Deck
    @cards
    attr_accessor :cards

    def initialize
        @cards = []
        rank = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
        suit = ["Hearts", "Clubs", "Diamonds", "Spades"]   
        for i in suit
            for x in rank
                @cards << Card.new(x,i)
            end
        end
    end

    def choose_card
        @cards.to_a.delete_at(rand(0..51))
        @cards
    end
end

class Card
    rank = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    suit = ["Hearts", "Clubs", "Diamonds", "Spades"]   

    attr_reader :suit, :rank

    def initialize(suit, rank)
        @suit = suit
        @rank = rank
    end
end

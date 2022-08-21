class Band
    attr_accessor :name
    attr_accessor :concerts
    attr_reader :hometown
    @@all = []

    def initialize(name, hometown)
        @name = name
        @hometown = hometown
        @concerts = []
        @@all << self
    end

    def self.all
        @@all
    end

    def play_in_venue(venue, date)
        Concert.new(date, self, venue)
    end

    def all_introductions
        self.concerts.map { |concert| concert.introduction }
    end
end
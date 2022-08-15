class Band
    attr_accessor :name
    attr_accessor :concerts
    attr_reader :hometown

    @@all = []

    def initialize(name, hometown)
        @name = name
        @hometown = hometown
        @@all << self
        @concerts = []
    end

    def self.all
        @@all
    end

    def play_in_venue(venue, date)
        concert = Concert.new(date, self, venue)
        venue.concerts << concert
        @concerts << concert
        venue.bands << self
    end

    def all_introductions
        self.concerts.map { |concert| concert.introduction }
    end
end
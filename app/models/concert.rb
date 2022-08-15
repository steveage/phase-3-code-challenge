class Concert
    attr_accessor :date
    attr_accessor :band
    attr_accessor :venue
    @@all = []

    def initialize(date, band, venue)
        @date = date
        @band = band
        @venue = venue
    end

    def hometown_show?
        self.venue.city == self.band.hometown
    end

    def introduction
        "Hello #{self.venue.city}!!!!!, we are #{self.band.name} and we're from #{self.band.hometown}"
    end
end
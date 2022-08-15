class Venue
    attr_accessor :title
    attr_accessor :concerts
    attr_accessor :bands
    attr_reader :city
    @@all = []

    def initialize(title, city)
        @title = title
        @city = city
        @@all << self
        @concerts = []
        @bands = []
    end

    def self.all
        @@all
    end

    def concert_on(date)
        concerts_on_date = self.concerts.find_all { |concert| concert.date == date }
        concerts_on_date.to_a.empty?? nil : concerts_on_date.first
    end

    def most_frequent_band
        self.bands.max_by { |i| bands.count(i) }
    end
end
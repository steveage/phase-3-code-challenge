class Venue

  ALL = []

  def initialize(location)
    @location = location
    ALL << self
  end

  def self.all
    ALL
  end

end
#A venue should have a method Venue#concerts that lists all the concerts that have ever been performed in that venue
#A venue should have a method Venue#bands that lists all the bands that have ever played in that venue

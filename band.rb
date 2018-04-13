class Band

  ALL = []

  def initialize(name, genre)
    @name = name
    @genre = genre
    ALL << self
  end

  def self.all
    ALL
  end

end

# DELIVERABLES
#A band should have a method Band#plays_in_venue that takes a venue and date as a string as arguements and associates the band to that venue
#A band shoulda have a method Band#concerts should return an array of all that band's concerts
#A band should have a method Band.all_introductions that puts out a message of "Hello, we are {insert band name here}. Our genre is {insert genre}" for each band

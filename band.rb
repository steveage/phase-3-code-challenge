class Band

  ALL = []

  attr_accessor :name

  def initialize(name)
    @name = name
    ALL << self
  end

  def self.all
    ALL
  end

end

# DELIVERABLES
#A band should have a method Band#plays_in_venue that takes a venue and name as a string as arguements and associates the band to that venue
#A band shoulda have a method Band#concerts should return an array of all that band's concerts
#A band should have a method Band#frequently_visited should return the venue that that band has played at most

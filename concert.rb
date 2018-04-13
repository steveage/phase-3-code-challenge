class Concert

  ALL = []

  def initialize(date)
    @date = date
    ALL << self
  end

  def self.all
    ALL
  end


end


#Concert#band and Concert#venue should return the band and venue associated to the Concert

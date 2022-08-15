require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

band1 = Band.new("bandName1", "Amsterdam")
band2 = Band.new("bandName2", "Olsztyn")

venue1 = Venue.new("venueTitle1", "Amsterdam")
venue2 = Venue.new("venueTitle2", "Chicago")
venue3 = Venue.new("venueTitle3", "Shanghai")

concert1 = Concert.new("2022.08.13", band1, venue1)
concert2 = Concert.new("2022.08.14", band2, venue2)

band1.play_in_venue(venue1, "2022.08.22")
band1.play_in_venue(venue2, "2022.08.31")
band2.play_in_venue(venue2, "2022.08.31")
band2.play_in_venue(venue2, "2022.08.29")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

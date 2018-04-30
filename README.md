[Insert Matt's great storyline here]

## Deliverables
________________
#### BAND
- Band should initialize with a name and hometown
- Band should have a Band#name and Band#hometown and a band should be able to change it's name
- Band should have a method Band.all that returns all the instances of Band
- Band should have a method Band#play_in_venue that takes a venue and date as a string as arguments and associates the band to that venue
- Band should have a method Band#concerts should return an array of all that band's concerts
- Band should have a method Band.all_introductions that puts out a message of "Hello, we are {insert band name here} and we're from {insert hometown here}" for each band
- Band should have a method Band#venues that returns an array of all the venues the band has concerts in
#### CONCERT
- Concert should have a Concert.all method which returns all the instances of Concert
- Concert should initialize with a date, band, and venue
- Concert should have methods Concert#band and Concert#venue that return the band and venue associated to the Concert
- Concent should have a method Concert#hometown_show? that returns true if the concert is in the band's hometown
#### VENUE
- Venue should initialize with a title and city
- Venue should have a method Venue.all method which returns all the instances of Venue
- Venue should have a method Venue#concerts that lists all the concerts that have ever been performed in that venue
- Venue should have a method Venue#bands that lists all the bands that have ever played in that venue

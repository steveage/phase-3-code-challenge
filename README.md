# Y'kids 'n yer concerts
Okay, so you's a real concert junkie, y'know? Always seein' this band at this place and that band at the other. When does it stop? You've always been proud to rattle off the list of concerts ya seen, but you're gettin' older and the list is just gettin' longer. It's time to solve this here problem progr'mmatically, y'know? This way, when Sally Two-Shoes runs up 'n says "Hey what are all of the venues you have attended?" or "Hey where is this band from?" or "How many hometown shows have you seen?", you'll be able to get yer answer lickity split, y'know? It's gon' be great, just crush it.

## Topics

- Classes vs Instances
- Variable Scope ( Class, Instance, Local )
- Object Relationships
- Arrays and Array Methods
- Class Methods

## Notes

Your goal is to build out all of the methods listed in the deliverables.

We've provided you with a console that you can use to test your code. To enter a console session, run `ruby tools/console.rb` from the command line. You'll be able to test out the methods that you write here. Take a look at that file to see how you can pre-define variables and create object instances, rather than manually doing it in every single console session.

**Remember!** This is a code challenge without tests. You cannot run `rspec` you cannot run `learn`. You'll need to create your own sample instances for testing purposes. Make sure your associations and methods work in the console before submitting.

## Deliverables

### Tier One (Do these first!)
#### `Band`
- `Band` should initialize with a name and hometown
- `Band` should respond to `Band#name` and `Band#hometown`
- `Band` should be able to change it's name with an accessor
- `Band` should have a method `Band.all` that returns all the instances of `Band`
- `Band` should have a method `Band.all_introductions` that puts out a message of `"Hello, we are {insert band name here} and we're from {insert hometown here}"` for each band

#### `Venue`
- `Venue` should initialize with a title and city
- `Venue` should have a method `Venue.all` method which returns all the instances of `Venue`


________________
### Tier Two (Do these last!)
#### `Concert`
- `Concert` should initialize with a date, band, and venue
- `Concert` should have methods `Concert#band` and `Concert#venue` that return the `Band` instance and `Venue` instance associated to the concert
- `Concert` should have a `Concert.all` method which returns all the instances of `Concert`
- `Concert` should have a method `Concert#hometown_show?` that returns true if the concert is in the band's hometown

#### `Band`
- `Band` should have a method `Band#play_in_venue` that takes a venue and date as a string as arguments and associates the band to that venue
- `Band` should have a method `Band#concerts` should return an array of all that band's concerts
- `Band` should have a method `Band#venues` that returns an array of all the venues the band plays in

#### `Venue`
- `Venue` should have a method `Venue#concerts` that lists all the concerts that have ever been performed in that venue
- `Venue` should have a method `Venue#bands` that lists all the bands that have ever played in that venue

# Object Relations Code Challenge - Concerts

For this assignment, we'll be working with a Concert domain.

We have three models: `Band`, `Concert`, and `Venue`.

For our purposes, a `Band` has many `Concerts`, a `Venue` has many `Concerts`s, and a `Concert` belongs to a `Band` and to a `Venue`.

`Band` - `Venue` is a many to many relationship.

Note: it can be helpful to draw your domain on paper or on a whiteboard before you start coding. Remember to identify a single source of truth for your data.

## Topics

- Classes and Instances
- Class and Instance Methods
- Variable Scope
- Object Relationships
- Arrays and Array Methods

## Instructions

Build out all of the methods listed in the deliverables. The methods build on each other, so you should write the methods in order.

**Remember!** This code challenge does not have tests. You cannot run `rspec` and you cannot run `learn`. You'll need to create your own sample instances so that you can try out your code on your own. Make sure your associations and methods work in the console before submitting.

We've provided you with a console that you can use to test your code. To enter a console session, run `ruby tools/console.rb` from the command line. You'll be able to test out the methods that you write here. Add code to the `tools/console.rb` file to define variables and create sample instances of your objects.

Writing error-free code is more important than completing all of the deliverables listed - prioritize writing methods that work over writing more methods that don't work. You should test your code in the console as you write.

Do your best to follow Ruby best practices. For example, use higher-level array methods such as `map`, `select`, and `find` when appropriate in place of `each`. When you encounter duplicated logic, you can extract it into a shared helper method.

## Deliverables

Write the following methods in the classes in the files provided. Feel free to build out any helper methods if needed.

### Tier One (Do these first!)

#### `Band`

- `Band` should initialize with a name and hometown
- `Band` should respond to `Band#name` and `Band#hometown`, returning those respective values.
- `Band` should be able to change its name with an accessor
- `Band` should have a method `Band.all` that returns all the instances of `Band`
- `Band` should have a method `Band.all_introductions` that puts out a list of messages in the format of `"Hello, we are {insert band name here} and we're from {insert hometown here}"` for every band.

#### `Venue`

- `Venue` should initialize with a title and city
- `Venue` should have a method `Venue.all` method which returns all the instances of `Venue`

---

### Tier Two (Do these last!)

#### `Concert`

- `Concert` should initialize with a date (as a string), band, and venue
- `Concert` should have methods `Concert#band` and `Concert#venue` that return the `Band` instance and `Venue` instance associated to the concert
- `Concert` should have a `Concert.all` method which returns all the instances of `Concert`
- `Concert` should have a method `Concert#hometown_show?` that returns true if the concert is in the band's hometown and false if it is not

#### `Band`

- `Band` should have a method `Band#play_in_venue` that takes a venue and date (as a string) as arguments and associates the band to that venue. **Hint: What part of the code base is responsible for associating a band and a venue?**
- `Band` should have a method `Band#concerts` should return an array of all the concerts that the band has played in

#### `Venue`

- `Venue` should have a method `Venue#concerts` that lists all the concerts that have ever been performed in that venue
- `Venue` should have a method `Venue#bands` that lists all the bands that have ever played in that venue

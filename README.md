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

Deliverables use the notation `#` for instance methods, and `.` for class methods.

Some of the methods listed are provided to you in the starter code. You should check that they work correctly, and that you understand them.

### Initializers, Readers, and Writers

#### Band

- `Band.initialize(name, hometown)`
  - should initialize with a name (string) and hometown (string)
- `Band#name`
  - should return the `Band`'s name
  - should be able to change its name after creation
- `Band#hometown`
  - should return the `Band`'s hometown
  - should not be able to change its hometown after creation
- `Band.all`
  - returns an array of all the instances of `Band`

#### Venue

- `Venue.initialize(title, city)`
  - should initialize with a title (string) and city (string)
- `Venue#title`
  - should return the title of the venue
  - should be able to change its title after creation
- `Venue#city`
  - should return the city of the venue
  - should not be able to change its city after creation
- `Venue.all`
  - returns all the instances of `Venue`

#### Concert

- `Concert.initialize(date, band, venue)`
  - should initialize with a date (string), band, and venue
- `Concert.all`
  - should return all instances of `Concert`

### Object Relationship Methods

#### Concert

- `Concert#band`
  - should return the `Band` instance for this concert
- `Concert#venue`
  - should return the `Venue` instance for this concert

#### Venue

- `Venue#concerts`
  - returns an array of all the concerts for the venue
- `Venue#bands`
  - returns an array of all the bands for the venue

#### Band

- `Band#concerts`
  - should return an array of all the concerts that the band has played in

### Aggregate and Association Methods

#### Concert

- `Concert#hometown_show?`
  - returns `true` if the concert is in the band's hometown, `false` if it is not

#### Band

- `Band#play_in_venue(venue, date)`
  - takes a venue and date (as a string) as arguments, and creates a new concert for the band in that venue on that date
- `Band.all_introductions`
  - returns an array of strings representing the introductions for all of the bands.
  - an introduction is in the form `"Hello, we are {insert band name here} and we're from {insert hometown here}"`

#### Venue

- `Venue#concert_on(date)`
  - takes a date (string) as argument
  - finds and returns the first concert on that date at that venue
  - if there is no concert on that date at that venue, returns `nil`
- `Venue#most_frequent_band`
  - returns the band with the most concerts at the venue

## Rubric

### Build classes using OO Ruby Syntax

1. Class code has a syntax or runtime error. Code does not run at all, or exits with an error, or most Object-oriented deliverables are not implemented.
2. Code runs without error, some deliverables function correctly. May use the wrong syntax for class or instance methods, use variables in the wrong scope, or have duplicated methods.
3. Correct class syntax and logic for most deliverables. May be incomplete or missing a small number of deliverables. Methods might be duplicated, or might not use attr\_\* macros appropriately.
4. Correct class syntax and logic for all of the submitted code. Uses attr\_\* macros appropriately. Class and instance methods and variables have correct scope, no methods duplicated. Some deliverables might not be complete.
5. Correct class syntax and logic for all deliverables, all deliverables complete. Shared functionality factored out into helper methods. Appropriate use of attr\_\* macros.

### Model relationships using Ruby

1. Submitted code does not relate models to each other through methods or data.
2. Models relate to each other, but incompletely. Code might not use a single source of truth or store data on the wrong model. Code may be missing methods for accessing the related model.
3. Models relate to each other as specified in the instructions. Data is stored on the correct models. Methods built using relationships may be incomplete.
4. Models relate to each other with belongs_to and has_many relationships. Methods built using those relationships work, but may be inelegant or duplicative.
5. Models relate to each other with belongs_to, has_many, and has_many_through relationships.

### Solve problems with collections of data

1. Does not attempt to solve collections problems, or has syntax errors in collection code.
2. Collections methods have errors. May use the wrong iterator, have incorrect logic, or have more than two collections methods left unimplemented.
3. Collections methods work correctly, with one or two unimplemented or with errors. Code may not use the appropriate built in method for each problem, duplicate logic instead of using helper methods, or have non-functional lines.
4. All collections methods are implemented and function correctly. Most use appropriate higher-level built-in methods. May duplicate logic instead of using helper methods.
5. All collections methods implemented and function correctly, using appropriate higher-level built-in methods. Shared logic is factored out to helper methods.

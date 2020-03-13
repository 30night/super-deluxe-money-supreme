# HarleysApp

## Purpose
### Describe
The main purpose of my app is to be a very simple tool in which the user can track everyday spending, it begins with a login prompt asking for their name and then opening their .csv file for them to use the app allowing them to fill in their daily profit and spending and then calculates their total capital for the day.
### Identify 
In my opinion there is no problem that it will solve but my aim for the app was to help beginners improve their spending habits by putting them in perspective as many people don't realise how much money they spend sometimes and by seeing the numberers hopefully it will give users drive to try and improve their capital.
### Target Audience 
The Audience i wish to reach with this app is not a particular age or gender but for people that have not fully realized the affect that looking over their finances can do to their savings and the potential capital that they can acquire. I aimed to keep the app simple as I see it as a stepping stone to more in depth apps as most finance app are very confusing and sometimes daunting to new users, as this one only records the gains and losses of each day and the total capital I hope that seeing just these three thing it will still give satisfaction from saving in a quick and easy way.

### features 
#### Unique login users
This terminal app features code that enables people to add and save users for later use. this implementation is made possible by saving the users data onto a .csv file and every time the user inputs the same login they are directed to their data using this code.
```ruby
    puts 'hello, what is your name?'
    user_name = gets.chomp 
    if File.exist?(user_name + ".csv")
      data = []
      file = File.read(user_name + ".csv")
      csv = CSV.parse(file, headers: true)
      csv.each do |row|
      data << row.to_hash.values    
      end
```
#### Save function
Saving function allows users to save their data and allows them to use the same file every time, i struggled with learning how to do this but this is how i did it.
```ruby
def self.save(user_name,table)
    CSV.open(user_name + '.csv', 'w') do |file|
      table.each do |row|
        file << row 
      end
```
#### TTY-Table
TTY-Table was one of the gems i used in order to make my application more user friendly as well as easier to read it was hard to implement as saving the data in a csv and then turning it into an array that tty-table could read.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'Harleys_app'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install Harleys_app

## Usage

1>
Usage of the app is very simple as soon as the app is started you are required to input a username, 

2>
if you do not have a user it then asked you if you want to add a user using the name you just inputted if you do then you are redirected back to the main screen now able to input the user you just made

3>
Once a user is selected then you are shown a screen with options of what to do the options are as followed
1: view table
2: add values to table
3: exit

4.1>
If you select view table you are shown a table showing you this:

4.2>
If you select add values you are asked what day it is and then for the assets of the day and then the liabilities and thn will calculate if you have made a profit for the day or if you didn't 

4.3> 
After you are finished viewing/adding to your table and select exit it will save your new data values to a csv and then exit the program

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/Harleys_app. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/Harleys_app/blob/master/CODE_OF_CONDUCT.md).


## Code of Conduct

Everyone interacting in the HarleysApp project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/Harleys_app/blob/master/CODE_OF_CONDUCT.md).

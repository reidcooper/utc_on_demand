# UtcOnDemand

Display your machine's current time (in your timezone) and in UTC.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'utc_on_demand'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install utc_on_demand

## Usage

Installing the gem will place the executable `utc`. Calling `utc` from the command line will return:

    $ utc
    EST: 2018-01-17 19:39:50 -0500
    UTC: 2018-01-18 00:39:50 UTC

Where, the first line returns your current system's time (in the configured timezone). The second line displays your current system time in UTC.

If you would like to convert a specific time to UTC, please add a argument to `utc`.

    $ utc 1:35pm
    EST: 2018-01-17 13:35:00 -0500
    UTC: 2018-01-17 18:35:00 UTC

It can also take a string argument and parse it. This implements ruby's built in `Time` library's `#parse` function.

    $ utc "2017/12/25 11:00am"
    EST: 2017-12-25 11:00:00 -0500
    UTC: 2017-12-25 16:00:00 UTC

Enjoy!

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/reidcooper/utc_on_demand.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

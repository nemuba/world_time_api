# WorldTimeApi

[![Gem Version](https://badge.fury.io/rb/world_time_api.svg)](https://badge.fury.io/rb/world_time_api)

A Ruby wrapper for the World Time API.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'world_time_api'
```

And then execute:

```bash
bundle install
```

Or install it yourself as:

```bash
gem install world_time_api
```

## Usage

### List all timezones

```ruby
WorldTimeApi::Timezones.call
```

### List timezones by area

```ruby
WorldTimeApi::AreaTimezones.call('Europe')
```

### List timezones by area and location

```ruby
WorldTimeApi::LocationTimezones.call('America', 'Sao_Paulo')
```

### Get time by area, location and region

```ruby
WorldTimeApi::RegionTime.call('America', 'Argentina', 'Salta')
```

### List all timezones (plain text)

```ruby
WorldTimeApi::TimezonesTxt.call
```

### List timezones by area (plain text)

```ruby
WorldTimeApi::AreaTimezonesTxt.call('Europe')
```

### List timezones by area and location (plain text)

```ruby
WorldTimeApi::LocationTimezonesTxt.call('America', 'Sao_Paulo')
```

### Get time by area, location and region (plain text)

```ruby
WorldTimeApi::RegionTimeTxt.call('America', 'Argentina', 'Salta')
```

### Get time by IP address (plain text)

```ruby
WorldTimeApi::ClientIpTxt.call('12.215.42.19')
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at <https://github.com/nemuba/world_time_api>. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/world_time_api/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the WorldTimeApi project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/world_time_api/blob/master/CODE_OF_CONDUCT.md).

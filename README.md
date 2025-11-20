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

### List timezones

```ruby
WorldTimeApi::Timezones.call
```

### Get time by timezone

```ruby
WorldTimeApi::Time.call('Europe/London')
```

### Get time by IP address

```ruby
WorldTimeApi::ClientIp.call('12.215.42.19')
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/nemuba/world_time_api. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/world_time_api/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the WorldTimeApi project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/world_time_api/blob/master/CODE_OF_CONDUCT.md).

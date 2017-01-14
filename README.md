# ERB::FileOut

By default, ERB compiles a script from the template and stores the result as a string in memory.
This is not great when dealing with templates that could end up being very large after rendering.
ERB::FileOut provides a way to write the result of a template to disk instead of storing it in memory.

[![Build Status](https://travis-ci.org/matchbookmac/erb-file_out.svg?branch=master)](https://travis-ci.org/matchbookmac/erb-file_out)

[![Code Climate](https://codeclimate.com/github/matchbookmac/erb-file_out/badges/gpa.svg)](https://codeclimate.com/github/matchbookmac/erb-file_out)

[![Test Coverage](https://codeclimate.com/github/matchbookmac/erb-file_out/badges/coverage.svg)](https://codeclimate.com/github/matchbookmac/erb-file_out/coverage)

[![Issue Count](https://codeclimate.com/github/matchbookmac/erb-file_out/badges/issue_count.svg)](https://codeclimate.com/github/matchbookmac/erb-file_out)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'erb-file_out'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install erb-file_out

## Usage

`ERB::FileOut` has the same API as `ERB`, except that it returns a path string instead of the template result.

``` ruby
  require 'erb/file_out'
  require 'pathname'

  result = Pathname.new(ERB::FileOut.new("This: <%= 'is' %> Pretty: <%= 'cool' %>")
  result.read

  # => 'This: is Pretty: cool'
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests.
You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the
version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version,
push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/matchbookmac/erb-file_out. This project is
intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the
[Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

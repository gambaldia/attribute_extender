# AttributeExtender

A class stores extended attributes in one field of SQL database table.

Support multiple characterized objects in one table. Assumed environments are ActiveRecord, Sequel, etc.

```
This is only my own use at this moment, No public supports yet.
```

```ruby
plate = MaterialPlate.new(10001)
pipe = MaterialPipe.new(10002)
plate.width = 1000.0
# plate.length = 500 # => error
pipe.length = 1200.0

material_database = [ plate, pipe ]
material_database.each do |material|
  puts "#{material.id}: #{material.class}: #{material.size}"
end
```

## Installation

Public Gem is not ready yet.

Add this line to your application's Gemfile:

```ruby
gem 'attribute_extender'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install attribute_extender

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/attribute_extender. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/attribute_extender/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the AttributeExtender project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/attribute_extender/blob/master/CODE_OF_CONDUCT.md).

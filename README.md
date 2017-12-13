# ActsAsStateable

## Description

This `acts_as` extension adds state information to ActiveRecords. Your class needs to have a `state` column defined as an integer on the mapped database table.

## Installation

In your Gemfile:

    $ gem 'acts_as_stateable'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install acts_as_stateable

## Usage

First, you need to add a `state` column to your desired table:

    rails g migration AddStateToJob state:integer
    rake db:migrate

After that you can use `acts_as_stateable` method in the model:

```ruby
class JobList < ActiveRecord::Base
  has_many :jobs
end

class Job < ActiveRecord::Base
  belongs_to :job_list
  acts_as_stateable scope: :state
end

job_list = JobList.find(...)
if(job_list.jobs.first.valid?)
  #get the job done
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/acts_as_stateable. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the ActsAsStateable project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/act_as_stateable/blob/master/CODE_OF_CONDUCT.md).

# ConstraintValidations
Provides a concern for automatically generating Rails validations based on some DB constraints.

## Usage
Include the concern in ActiveRecord models to get automatic validations
```ruby
include ConstraintValidations
```

Including the concern will evaluate database constraints and automatically add the following
validations:
1. For any column with a not-NULL constraint, it will validate `presence: true`

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'constraint_validations'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install constraint_validations
```

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

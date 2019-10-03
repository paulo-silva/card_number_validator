# card_number_validator [![Gem Version][version-badge]][rubygems] [![Build Status][travis-badge]][travis] [![Code Climate][code-climate-badge]][code-climate]

CardNumberValidator provides methods to validate the most used card flags in the world.
In addition, you can generate fake card numbers for development and tests purposes.

## Installation

Add `card_number_validator` to `Gemfile`
`Gemfile`:

```ruby
gem 'card_number_validator'
```

Download and install by running:

```
bundle install
```

----

## Usage

### CardNumberValidator.flag(card_number)
Returns the flag name of the card or `:unknown` when the number is invalid.

See Example:
``` ruby
  CardNumberValidator.flag('378282246310005') # :amex
  CardNumberValidator.flag('30569309025904') # :diners
  CardNumberValidator.flag('6363683839698868') # :elo
  CardNumberValidator.flag('6062826289081176') # :hipercard
  CardNumberValidator.flag('4012888888881881') # :visa
  CardNumberValidator.flag('5223358786371817') # :mastercard
  CardNumberValidator.flag('111') # :unknown
```
### CardNumberValidator.valid?(card_number)
Checks if the given card number is valid or not.

See Example:
``` ruby
  CardNumberValidator.valid?('378282246310005') # true
  CardNumberValidator.valid?('30569309025904') # true
  CardNumberValidator.valid?('6363683839698868') # true
  CardNumberValidator.valid?('6062826289081176') # true
  CardNumberValidator.valid?('4012888888881881') # true
  CardNumberValidator.valid?('5223358786371817') # true
  CardNumberValidator.valid?('111') # false
```

### CardNumberValidator.generate(:flag_name)
Returns a fake card number for the given flag name.

See Example:
``` ruby
  CardNumberValidator.generate(:amex) # '378282246310005'
```

## Contributing

Card Validator is open source, and we are grateful for
[everyone][contributors] who's contributed so far.

## License

It is free software, and may be redistributed under the terms specified in the [MIT-LICENSE](MIT-LICENSE) file.

## Feature Requests & Bugs

See <http://github.com/pauloh-silva/card_number_validator/issues>

[contributors]: https://github.com/pauloh-silva/card_number_validator/contributors
[travis]: https://travis-ci.org/pauloh-silva/card_number_validator
[travis-badge]: https://travis-ci.org/pauloh-silva/card_number_validator.svg?branch=master
[code-climate]: https://codeclimate.com/github/pauloh-silva/card_number_validator
[code-climate-badge]: https://codeclimate.com/github/codeclimate/codeclimate/badges/gpa.svg
[rubygems]: http://rubygems.org/gems/card_number_validator
[version-badge]: https://badge.fury.io/rb/card_number_validator.svg

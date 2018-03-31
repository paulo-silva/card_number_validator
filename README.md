# card_validator [![Build Status](https://travis-ci.org/pauloh-silva/card_validator.svg?branch=master)](https://travis-ci.org/pauloh-silva/card_validator)
[![Code Climate](https://codeclimate.com/github/codeclimate/codeclimate/badges/gpa.svg)](https://codeclimate.com/github/pauloh-silva/card_validator)

Card Validator provides you some methods to validate the most used card flags in the world.
In addition, you can generate fake card numbers for development and tests purposes.

## Installation

Add `card_validator` to `Gemfile`
`Gemfile`:

```ruby
gem 'card_validator', '0.1.0'
```

Download and install by running:

```
bundle install
```

----

## Usage

### CardValidator::Validator.flag(card_number)
Returns flag name to provided card number or :unknown
when the provided number is invalid

See Example:
``` ruby
  CardValidator::Validator.flag('378282246310005') # :amex 
  CardValidator::Validator.flag('30569309025904') # :diners 
  CardValidator::Validator.flag('6363683839698868') # :elo 
  CardValidator::Validator.flag('6062826289081176') # :hipercard 
  CardValidator::Validator.flag('4012888888881881') # :visa 
  CardValidator::Validator.flag('5223358786371817') # :mastercard
  CardValidator::Validator.flag('111') # :unknown
```
### CardValidator::Validator.valid?(card_number)
Returns if provided card number is valid or not

See Example:
``` ruby
  CardValidator::Validator.valid?('378282246310005') # true
  CardValidator::Validator.valid?('30569309025904') # true
  CardValidator::Validator.valid?('6363683839698868') # true
  CardValidator::Validator.valid?('6062826289081176') # true
  CardValidator::Validator.valid?('4012888888881881') # true
  CardValidator::Validator.valid?('5223358786371817') # true
  CardValidator::Validator.valid?('111') # false
```

### CardValidator::Validator.generate(:flag_name)
Returns fake card number by provided flag name

See Example:
``` ruby
  CardValidator::Validator.generate(:amex) # '378282246310005'
```

## Contributing

Card Validator is open source, and we are grateful for
[everyone][contributors] who's contributed so far.

## License

It is free software, and may be redistributed under the terms specified in the [MIT-LICENSE](MIT-LICENSE) file.

## Feature Requests & Bugs

See <http://github.com/pauloh-silva/card_validator/issues>

[contributors]: https://github.com/thoughtbot/shoulda-matchers/contributors
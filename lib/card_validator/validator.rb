require 'securerandom'
require 'card_validator/cards/amex'
require 'card_validator/cards/diners'
require 'card_validator/cards/elo'
require 'card_validator/cards/hiper'
require 'card_validator/cards/hipercard'
require 'card_validator/cards/mastercard'
require 'card_validator/cards/visa'

module CardValidator
  class Validator

    FLAGS = %i(
      amex diners elo hiper hipercard mastercard visa
    )

    def self.flag(card_number)
      card_number = card_number.to_s
      self::FLAGS.each do |flag|
        flag_found = flag_class(flag).send('validate', card_number)
        return flag if flag_found
      end
      :unknown
    end

    def self.valid?(card_number)
      flag(card_number) != :unknown
    end

    def self.generate(flag)
      flag = flag.to_sym
      return unless self::FLAGS.include?(flag)
      flag_class(flag).send('generate')
    end

    def self.flag_class(flag)
      flag_class = "CardValidator::Cards::#{flag.to_s.capitalize}"
      flag_class = 'CardValidator::Cards::Diners' if flag == :diners
      Kernel.const_get flag_class
    end
  end
end
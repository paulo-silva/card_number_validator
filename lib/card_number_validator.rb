require 'securerandom'
require 'card_number_validator/cards/amex'
require 'card_number_validator/cards/diners'
require 'card_number_validator/cards/elo'
require 'card_number_validator/cards/hiper'
require 'card_number_validator/cards/hipercard'
require 'card_number_validator/cards/mastercard'
require 'card_number_validator/cards/visa'

module CardNumberValidator

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
    flag_class = "CardNumberValidator::Cards::#{flag.to_s.capitalize}"
    flag_class = 'CardNumberValidator::Cards::Diners' if flag == :diners
    Kernel.const_get flag_class
  end
end

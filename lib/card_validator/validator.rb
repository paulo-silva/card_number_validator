require 'cards/amex'
require 'cards/diners'
require 'cards/elo'
require 'cards/hiper'
require 'cards/hipercard'
require 'cards/mastercard'
require 'cards/visa'

module CardValidator
  class Validator

    FLAGS = %i(
      amex diners elo hiper hipercard mastercard visa
    )

    def self.flag(card_number)
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
      flag_class = "CardValidator::Cards::#{flag.classify}"
      if flag == 'diners'
        flag_class = "CardValidator::Cards::#{flag.classify.pluralize}"
      end
      flag_class.constantize
    end
  end
end
module CardValidator
  module Cards
    class Amex

      def self.validate(card_number)
        card_number.present? && /3(7|4)\d{13}/.match(card_number)
      end
      
      def self.generate
        "37#{SecureRandom.random_number(13)}"
      end
    end
  end
end
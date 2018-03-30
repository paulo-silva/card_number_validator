module CardValidator
  module Cards
    class Amex

      def self.validate(card_number)
        card_number ? /3(7|4)\d{13}/.match(card_number) : false
      end
      
      def self.generate
        "37#{rand(10**13)}"
      end
    end
  end
end
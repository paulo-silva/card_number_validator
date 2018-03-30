module CardValidator
  module Cards
    class Diners

      def self.validate(card_number)
        card_number ? /^3\d{13}/.match(card_number) : false
      end
      
      def self.generate
        "3#{rand(10**13)}"
      end
    end
  end
end
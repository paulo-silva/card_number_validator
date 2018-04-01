module CardNumberValidator
  module Cards
    class Amex

      def self.validate(card_number)
        card_number ? /^3(7|4)\d{13}/.match(card_number) : false
      end
      
      def self.generate
        "37#{rand(10**14).to_s.rjust(14,rand(1..9).to_s)}"
      end
    end
  end
end
module CardNumberValidator
  module Cards
    class Visa

      def self.validate(card_number)
        /^4\d{15}/.match(card_number)
      end
      
      def self.generate
        "4#{rand(10**15).to_s.rjust(15,rand(1..9).to_s)}"
      end
    end
  end
end
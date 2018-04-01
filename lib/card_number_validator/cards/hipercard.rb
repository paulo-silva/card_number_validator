module CardNumberValidator
  module Cards
    class Hipercard

      def self.validate(card_number)
        return unless card_number
        [
          /^606282\d{10}$/,
          /^3841(0|4|6)0\d{13}$/
        ].each { |rgx| return true if rgx.match(card_number) }
        false
      end
      
      def self.generate
        "606282#{rand(10**10).to_s.rjust(10,rand(1..9).to_s)}"
      end
    end
  end
end
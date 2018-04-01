module CardNumberValidator
  module Cards
    class Hiper
      HIPER_BINS = %w[637095 637612 637599 637609 637568].freeze

      def self.validate(card_number)
        return unless card_number && card_number.size == 16
        self::HIPER_BINS.include? card_number[0..5]
      end
      
      def self.generate
        card_prefix = self::HIPER_BINS[rand(0..self::HIPER_BINS.size-1)]
        "#{card_prefix}#{rand(10**10).to_s.rjust(10,rand(1..9).to_s)}"
      end
    end
  end
end
module CardNumberValidator
  module Cards
    class Elo
      ELO_BINS = %w[
        401178 401179 431274 438935 451416
        457393 457631 457632 504175 627780
        636297 636368 636369
      ].freeze

      def self.validate(card_number)
        return unless card_number && card_number.size == 16
        self::ELO_BINS.include?(card_number[0..5])
      end

      def self.generate
        card_prefix = self::ELO_BINS[rand(0..self::ELO_BINS.size-1)]
        "#{card_prefix}#{rand(10**10).to_s.rjust(10, rand(1..9).to_s)}"
      end
    end
  end
end

module CardNumberValidator
  module Cards
    class Mastercard
      MASTERCARD_RANGES = [
        [222_100, 272_099]
      ].freeze

      def self.validate(card_number)
        return unless card_number

        /5\d{15}/.match(card_number) || valid_master_bin?(card_number)
      end

      def self.valid_master_bin?(card_number)
        return unless card_number.size > 5

        self::MASTERCARD_RANGES.each do |mc_range|
          next unless (mc_range[0]..mc_range[1]).include?(card_number[0..5].to_i)
          return true
        end

        false
      end

      def self.generate
        master_range = self::MASTERCARD_RANGES[rand(0..self::MASTERCARD_RANGES.size - 1)]
        "#{rand(master_range[0]..master_range[1])}#{rand(10**10).to_s.rjust(10, rand(1..9).to_s)}"
      end
    end
  end
end

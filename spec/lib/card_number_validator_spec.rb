RSpec.describe CardNumberValidator do
  before do
    @valid_card_numbers = {
      amex: '378282246310005',
      diners: '30569309025904',
      elo: '6363683839698868',
      hipercard: '6062826289081176',
      visa: '4012888888881881',
      mastercard: '5223358786371817'
    }
  end

  context 'Checking card flag' do
    describe 'Valid card numbers' do
      it 'Should returns card flag name' do
        @valid_card_numbers.each do |flag, number|
          expect(CardNumberValidator.flag(number)).to eq flag
        end
      end
    end

    describe 'Invalid card numbers' do
      it 'Should returns :unknow as card flag name' do
        expect(CardNumberValidator.flag(111)).to eq :unknown
      end
    end
  end

  context 'Checking card validity' do
    describe 'Valid card numbers' do
      it 'Should returns true' do
        @valid_card_numbers.each do |flag, number|
          expect(CardNumberValidator.valid?(number)).to be_truthy
        end
      end
    end

    describe 'Invalid card numbers' do
      it 'Should returns false' do
        expect(CardNumberValidator.valid?(111)).to be_falsey
      end
    end
  end

  context 'Checking card generation' do
    describe 'Valid flags' do
      it 'Should create a valid card number to provided flag' do
        @valid_card_numbers.each do |flag, _number|
          generated_card_number = CardNumberValidator.generate(flag)
          expect(CardNumberValidator.flag(generated_card_number)).to eq flag
        end
      end
    end

    describe 'Invalid flags' do
      it 'Should returns empty response' do
        generated_card_number = CardNumberValidator.generate(:invalid_flag)
        expect(generated_card_number).to be_nil
      end
    end
  end
end
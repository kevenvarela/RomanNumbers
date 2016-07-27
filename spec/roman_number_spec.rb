require 'roman_number'

describe Integer do

  describe '#as_roman_number_string' do

    it 'when sent to 1 to 39 should work' do
      expect(1.as_roman_number_string).to eq 'I'
      expect(3.as_roman_number_string).to eq 'III'
      expect(4.as_roman_number_string).to eq 'IV'
      expect(8.as_roman_number_string).to eq 'VIII'
      expect(9.as_roman_number_string).to eq 'IX'

      expect(10.as_roman_number_string).to eq 'X'
      expect(13.as_roman_number_string).to eq 'XIII'
      expect(14.as_roman_number_string).to eq 'XIV'
      expect(18.as_roman_number_string).to eq 'XVIII'
      expect(19.as_roman_number_string).to eq 'XIX'

      expect(20.as_roman_number_string).to eq 'XX'
      expect(23.as_roman_number_string).to eq 'XXIII'
      expect(24.as_roman_number_string).to eq 'XXIV'
      expect(28.as_roman_number_string).to eq 'XXVIII'
      expect(29.as_roman_number_string).to eq 'XXIX'

      expect(30.as_roman_number_string).to eq 'XXX'
      expect(33.as_roman_number_string).to eq 'XXXIII'
      expect(34.as_roman_number_string).to eq 'XXXIV'
      expect(38.as_roman_number_string).to eq 'XXXVIII'
      expect(39.as_roman_number_string).to eq 'XXXIX'
    end

    it 'when sent to 40 to 49 should work' do
      expect(40.as_roman_number_string).to eq 'XL'
      expect(43.as_roman_number_string).to eq 'XLIII'
      expect(44.as_roman_number_string).to eq 'XLIV'
      expect(48.as_roman_number_string).to eq 'XLVIII'
      expect(49.as_roman_number_string).to eq 'XLIX'
    end

    it 'when sent to 50 to 89 should work' do
      expect(50.as_roman_number_string).to eq 'L'
      expect(63.as_roman_number_string).to eq 'LXIII'
      expect(74.as_roman_number_string).to eq 'LXXIV'
      expect(89.as_roman_number_string).to eq 'LXXXIX'
    end

    it 'when sent to 90 to 99 should work' do
      expect(90.as_roman_number_string).to eq 'XC'
      expect(93.as_roman_number_string).to eq 'XCIII'
      expect(94.as_roman_number_string).to eq 'XCIV'
      expect(98.as_roman_number_string).to eq 'XCVIII'
      expect(99.as_roman_number_string).to eq 'XCIX'
    end

    it 'when sent to 100 should return C' do
      expect(100.as_roman_number_string).to eq 'C'
    end

  end
end

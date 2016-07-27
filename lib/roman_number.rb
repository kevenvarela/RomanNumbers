class Integer

  def as_roman_number_string
    hundreeds = self / 100 % 10
    tens      = self / 10  % 10
    units     = self / 1   % 10

    tens.convert_digit_using('X', 'L', 'C') + units.convert_digit_using('I', 'V', 'X')
  end

  def convert_digit_using(as_one, as_five, as_ten)
    return as_one * self if self.between? 1, 3
    return as_one + as_five if self == 4
    return as_five + as_one * (self - 5) if self.between? 5, 8
    return as_one + as_ten if self == 9
    ''
  end

end

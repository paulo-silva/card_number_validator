class String
  def card_flag
    ::CardNumberValidator::flag(self)
  end
end

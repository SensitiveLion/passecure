class Testing < CommonPasswords
  def security?
    common_name? &&
    ascii? &&
    long_enough?  &&
    special_chars? &&
    uppercase? &&
    lowercase? &&
    numbers? &&
    last_not_date? &&
    first_not_capital?
  end
end

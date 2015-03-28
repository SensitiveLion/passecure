class HarderTests < CommonTests
  def last_not_date?
    number = @password.split(//).last(2)
    if number.join.to_i >= 10
      return false
    end

    if number.first == "0" && ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"].include?(number.last)
      return false
    end
    true
  end

  def first_not_capital?
    letter = @password.split(//).first
    letter == letter.downcase
  end

end

class CommonTests
  attr_reader :password

  def ascii?
    password.ascii_only?
  end

  def long_enough?
    password.length >= 10
  end

  def special_chars?
    count = 0
    password.split(//).each do |letter|
      if ["!", "@", "#", "$", "%", "^", "&", "*", "(", ")", "_", "+",
          "-", "=", "<", ">", '?', ":", "\"", "{", "}", "|", "\\", "]",
          "[", "'", ";", "/", ".", ",", "=", "-", "`", "~", " "].include?(letter)
        count +=1
      end
    end
   if count >= 1
     return true
   end
   false
  end

  def uppercase?
    matches = password.gsub(/[^A-Z]*/,"")
    if matches.size >= 1
      return true
    end
    false
  end

  def lowercase?
    matches = password.gsub(/[^a-z]*/,"")
    if matches.size >= 1
      return true
    end
    false
  end

  def numbers?
    matches = password.gsub(/[^0-9]*/,"")
    if matches.size >= 1
      return true
    end
    false
  end

end

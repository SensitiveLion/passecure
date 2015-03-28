def Phrase
  def prase_long_enough?
    @password.length >= 10
  end

  def spaces
    count = 0
    
    if @password.split(//).each do |space|
      [ " "].include?(space
      count +=1
    end
    
    if count >= 1
     return true
    end
    false
  end

  def uppercase?
    matches = @password.gsub(/[^A-Z]*/,"")
    if matches.size >= 1
      return true
    end
    false
  end

  def lowercase?
    matches = @password.gsub(/[^a-z]*/,"")
    if matches.size >= 1
      return true
    end
    false
  end
end

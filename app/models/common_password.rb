class CommonPassword < ActiveRecord::Base

  def common_name?
    count = 0
    password_normal = @password.downcase
    password_check = CommonPassword.all.to_a

    password_check.each do |word|
      if word["common_passwords"].include?(password_normal)
        count +=1
      end
    end
    if count > 1
      return false
    end
    true
  end
end

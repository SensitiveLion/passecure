class Password < ActiveRecord::Base
  validate :password_strong_enough

  def password_strong_enough
    summary = PasswordSummary.new(self.password)

    if !summary.strong_enough?
      errors.add(:password) <<
  end
end

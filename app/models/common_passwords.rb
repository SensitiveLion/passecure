require 'pry'
require "pg"
class CommonPasswords < HarderTests

  def get_common
    db_connection do |conn|
      conn.exec('SELECT * FROM passwords')
    end
  end

  def common_name?
    count = 0
    password_normal = @password.downcase
    password_check = get_common.to_a

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

  def db_connection
    begin
      connection = PG.connect(dbname: "passwords")
      yield(connection)
    ensure
      connection.close
    end
  end
end

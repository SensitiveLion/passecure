require "pg"
require "csv"

def db_connection
  begin
    connection = PG.connect(dbname: "passwords")
    yield(connection)
  ensure
    connection.close
  end
end


CSV.foreach("common.csv", headers:false) do |row|
  db_connection do |conn|
    conn.exec_params("INSERT INTO passwords (common_passwords) VALUES ($1)", row)
  end
end


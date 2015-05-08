require 'csv'

CSV.foreach("common.csv", headers:false) do |row|
  CommonPassword.create(item: row)
end

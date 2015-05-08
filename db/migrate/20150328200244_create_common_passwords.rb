class CreateCommonPasswords < ActiveRecord::Migration
  def change
    create_table :common_passwords do |t|
      t.string :item, null: false
    end
  end
end

class ChangeContactTypeInUsers < ActiveRecord::Migration[6.0]
  change_column :users, :contact, :bigint
end

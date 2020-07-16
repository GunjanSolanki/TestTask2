class CreateOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :options do |t|
      t.string :option_type
      t.string :option_value, array: true, default: []

      t.timestamps
    end
  end
end

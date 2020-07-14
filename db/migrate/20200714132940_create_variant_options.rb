class CreateVariantOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :variant_options do |t|
      t.references :variant, null: false, foreign_key: true
      t.references :option, null: false, foreign_key: true
  
      t.timestamps
    end
  end
end

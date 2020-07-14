class CreateProductOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :product_options do |t|
      t.references :product_type, null: false, foreign_key: true
      t.string :supported_option_type

      t.timestamps
    end
  end
end

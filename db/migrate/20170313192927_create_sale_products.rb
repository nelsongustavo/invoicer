class CreateSaleProducts < ActiveRecord::Migration
  def change
    create_table :sale_products do |t|
      t.references :Sale, index: true, foreign_key: true
      t.references :Product, index: true, foreign_key: true
      t.date :sale_date

      t.timestamps null: false
    end
  end
end

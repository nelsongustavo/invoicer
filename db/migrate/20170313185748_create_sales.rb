class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.references :Customer, index: true, foreign_key: true
      t.integer :user_id
      t.date :sale_date
      t.decimal :total
      t.references :PaymentMethod, index: true, foreign_key: true
      t.integer :times
      t.boolean :is_fitpark

      t.timestamps null: false
    end
  end
end

class CreatePortions < ActiveRecord::Migration
  def change
    create_table :portions do |t|
      t.date :portion_date
      t.references :Sale, index: true, foreign_key: true
      t.string :name
      t.integer :number
      t.boolean :is_paid

      t.timestamps null: false
    end
  end
end

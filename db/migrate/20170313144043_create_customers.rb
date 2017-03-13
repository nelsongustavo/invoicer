class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.bigint :enrolment
      t.string :name
      t.string :cpf
      t.string :email
      t.text :address

      t.timestamps null: false
    end
  end
end

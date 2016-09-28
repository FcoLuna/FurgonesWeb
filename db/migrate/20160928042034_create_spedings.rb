class CreateSpedings < ActiveRecord::Migration
  def change
    create_table :spedings do |t|
      t.string :nombre
      t.integer :monto
      t.integer :van_id

      t.timestamps null: false
    end
  end
end

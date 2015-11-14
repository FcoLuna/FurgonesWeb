class CreateVans < ActiveRecord::Migration
  def change
    create_table :vans do |t|
      t.string :patente
      t.integer :capacidad
      t.string :estado
      t.integer :kilimetrage

      t.timestamps null: false
    end
  end
end

class CreatePays < ActiveRecord::Migration
  def change
    create_table :pays do |t|
      t.string :mes
      t.date :fecha
      t.references :parent, index: true, foreign_key: true
      t.integer :monto
      t.timestamps null: false
    end
  end
end

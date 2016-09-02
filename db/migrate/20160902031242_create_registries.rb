class CreateRegistries < ActiveRecord::Migration
  def change
    create_table :registries do |t|
      t.string :nombre
      t.string :mensaje
      t.date :fecha
      t.references :van, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end

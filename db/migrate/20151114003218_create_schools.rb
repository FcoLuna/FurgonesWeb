class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :nombre
      t.integer :telefono
      t.string :direccion
      t.string :comuna

      t.timestamps null: false
    end
  end
end

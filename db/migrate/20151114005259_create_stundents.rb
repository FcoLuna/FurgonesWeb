class CreateStundents < ActiveRecord::Migration
  def change
    create_table :stundents do |t|
      t.string :nombre
      t.string :apellido
      t.string :rut
      t.string :jornada
      t.string :direccion
      t.string :comuna
      t.references :parent, index: true, foreign_key: true
      t.references :van, index: true, foreign_key: true
      t.references :school, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

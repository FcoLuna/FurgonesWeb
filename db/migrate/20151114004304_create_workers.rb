class CreateWorkers < ActiveRecord::Migration
  def change
    create_table :workers do |t|
      t.string :nombre
      t.string :apellido
      t.string :rut
      t.string :tipo_trabajador
      t.integer :sueldo
      t.references :van, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

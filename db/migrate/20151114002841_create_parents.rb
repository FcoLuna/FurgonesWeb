class CreateParents < ActiveRecord::Migration
  def change
    create_table :parents do |t|
      t.string :nombre
      t.string :apellido
      t.integer :telefono
      t.string :rut
      t.integer :pago
      t.timestamps null: false
    end
  end
end

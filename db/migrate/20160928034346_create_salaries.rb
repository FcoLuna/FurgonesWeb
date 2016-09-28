class CreateSalaries < ActiveRecord::Migration
  def change
    create_table :salaries do |t|
      t.integer :monto
      t.string :mes
      t.integer :worker_id

      t.timestamps null: false
    end
  end
end

class AddTelefonoToWorker < ActiveRecord::Migration
  def change
    add_column :workers, :telefono, :integer
  end
end

class CreateSpedings < ActiveRecord::Migration
  def change
    create_table :spedings do |t|

      t.timestamps null: false
    end
  end
end

class CreateMaestros < ActiveRecord::Migration
  def change
    create_table :maestros do |t|
      t.string :nombre
      t.integer :cargo_id

      t.timestamps
    end
  end
end

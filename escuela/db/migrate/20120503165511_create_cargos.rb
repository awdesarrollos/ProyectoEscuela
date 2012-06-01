class CreateCargos < ActiveRecord::Migration
  def change
    create_table :cargos do |t|
      t.string :descripcion

      t.timestamps
    end
  end
end

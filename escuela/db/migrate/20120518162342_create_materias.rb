class CreateMaterias < ActiveRecord::Migration
  def change
    create_table :materias do |t|
      t.string :descripcion

      t.timestamps
    end
  end
end

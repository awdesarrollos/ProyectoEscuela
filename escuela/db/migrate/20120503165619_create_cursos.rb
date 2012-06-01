class CreateCursos < ActiveRecord::Migration
  def change
    create_table :cursos do |t|
      t.string :descripcion

      t.timestamps
    end
  end
end

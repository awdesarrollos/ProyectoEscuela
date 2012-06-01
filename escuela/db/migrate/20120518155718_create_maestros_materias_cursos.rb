class CreateMaestrosMateriasCursos < ActiveRecord::Migration
  def change
    create_table :maestros_materias_cursos do |t|
      t.integer :maestra_id
      t.integer :materia_id
      t.integer :curso_id

      t.timestamps
    end
  end
end

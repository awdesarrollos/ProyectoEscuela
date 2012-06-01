class AddMaestroIdToMaestrosMateriasCursos < ActiveRecord::Migration
  def change
    add_column :maestros_materias_cursos, :maestro_id, :integer
  end
end

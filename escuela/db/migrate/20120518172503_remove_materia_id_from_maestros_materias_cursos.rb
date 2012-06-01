class RemoveMateriaIdFromMaestrosMateriasCursos < ActiveRecord::Migration
  def up
    remove_column :maestros_materias_cursos, :maestra_id
      end

  def down
    add_column :maestros_materias_cursos, :maestra_id, :integer
  end
end

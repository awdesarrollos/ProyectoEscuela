class CreateAlumnos < ActiveRecord::Migration
  def change
    create_table :alumnos do |t|
      t.string :nombre
      t.integer :curso_id

      t.timestamps
    end
  end
end

class CreateCiudades < ActiveRecord::Migration
  def change
    create_table :ciudades do |t|
      t.string :nombre
      t.string :zipcode
      t.text :descripcion

      t.timestamps
    end
  end
end

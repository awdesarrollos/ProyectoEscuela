class Maestro < ActiveRecord::Base
	belongs_to :cargo
	has_many :maestros_materias_cursos, :class_name => 'MaestroMateriaCurso'
	has_many :materias, through: :maestros_materias_cursos

	delegate :descripcion, :to => :cargo, :allow_nil => true, :prefix => true
	
	attr_accessible :cargo_id, :nombre, :materia_ids
end

class Materia < ActiveRecord::Base
	has_many :maestros_materias_cursos
	has_many :maestros, through: :maestros_materias_cursos
end

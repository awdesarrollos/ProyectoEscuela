class MaestroMateriaCurso < ActiveRecord::Base
	belongs_to :materia
	belongs_to :maestro
end

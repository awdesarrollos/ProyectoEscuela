class Alumno < ActiveRecord::Base
	belongs_to :curso
	delegate :descripcion, :to => :curso, :allow_nil => true, :prefix => true

	
	validates :nombre, :presence => { :message =>" es obligatorio."}, :length => { :minimum => 5, :message =>" debe tener mas de 5 caracteres.", :allow_blank => true }
end

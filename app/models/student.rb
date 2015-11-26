class Student < ActiveRecord::Base
  belongs_to :parent
  belongs_to :school
  belongs_to :van
  validates :nombre, presence: true, length:{in:3..20, 
  			too_short:"demasiado corto", 
  			too_long:"demasiado largo"}
  validates :apellido, presence: true, length:{in:3..20, 
  			too_short:"demasiado corto", 
  			too_long:"demasiado largo"}
  validates_format_of :rut,
                      :with => /\A(\d{1,3})\.(\d{3})\.(\d{3})\-(k|\d{1})\Z/i,
                      :message => "no Valido EJ: 123.456.789-k"
  validates :rut, uniqueness: {case_sensitive: false ,message: "ya existe"}
end

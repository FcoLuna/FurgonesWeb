class Student < ActiveRecord::Base
  belongs_to :parent,dependent: :destroy
  belongs_to :school
  belongs_to :van
  validates_format_of :rut,
                      :with => /\A(\d{1,3})\.(\d{3})\.(\d{3})\-(k|\d{1})\Z/i,
                      :message => "Rut no Valido EJ: 123.456.789-k"
  validates :rut, uniqueness: {case_sensitive: false ,message: "El Rut ya existe"}
end

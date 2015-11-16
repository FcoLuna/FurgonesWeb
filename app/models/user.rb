class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :workers
  has_many :parents
  validates :email, uniqueness: {case_sensitive: false ,message: "ya existe una correo con ese nombre"}
end

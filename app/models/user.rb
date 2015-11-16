class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :workers, dependent: :destroy
  has_one :parents, dependent: :destroy
  validates :email, uniqueness: {case_sensitive: false ,message: "ya existe una correo con ese nombre"}
end

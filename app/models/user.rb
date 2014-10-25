class User < ActiveRecord::Base
  
  has_many :enrollments
  has_many :lectures, through: :enrollments
  has_many :assignments, through: :answers
  has_many :answers
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end

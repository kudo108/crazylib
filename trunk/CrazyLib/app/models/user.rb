class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :student_id, :presence => true
  validates :class_name, :presence => true
  validates :home_address, :presence => true
  validates :phone_number, :presence => true
  
  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :student_id, :class_name, :home_address, :phone_number
  
  
end

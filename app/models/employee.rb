class Employee < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :password, :password_confirmation, :admin
  has_secure_password
  has_many :attendences
end

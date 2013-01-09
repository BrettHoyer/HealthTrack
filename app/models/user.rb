class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation
  has_many :categories
  has_many :exercises
  # has_many :turns, :through => :exercises

  has_secure_password
end

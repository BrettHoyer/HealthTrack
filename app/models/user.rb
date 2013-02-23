class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation
  has_many :categories
  has_many :exercises
  has_many :turns, :through => :exercises

  before_save { |user| user.email = user.email.downcase }

  has_secure_password
end

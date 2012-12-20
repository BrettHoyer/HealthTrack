class Exercise < ActiveRecord::Base
  attr_accessible :name, :date, :user_id

  belongs_to :user
  has_many :turns, order: 'date desc'
end

class Exercise < ActiveRecord::Base
  attr_accessible :name, :date, :user_id, :category_id

  belongs_to :user
  belongs_to :category
  has_many :turns, :order => 'date desc, turn_num asc'
end

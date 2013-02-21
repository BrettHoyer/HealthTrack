class Turn < ActiveRecord::Base
  attr_accessible :date, :reps, :turn_num, :weight, :exercise_id

  belongs_to :exercise
  validates_presence_of :date, :reps, :turn_num, :weight, :exercise_id
end

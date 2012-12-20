class Turn < ActiveRecord::Base
  attr_accessible :date, :reps, :turn_num, :weight, :exercise_id

  belongs_to :exercise
end

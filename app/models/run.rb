class Run < ActiveRecord::Base
  attr_accessible :date, :distance, :time, :user_id

  def self.mins_per_mile(date)
  	where("date(date) = ?", date).minutes_per_mile
  end
  def minutes_per_mile
  	t= Array.new
  	self.time.split(":").each do |num|
  		t << num.to_f
  	end

  	dist_per_min = self.distance/(t[0]*60+t[1]+t[2]/60)
  	min_per_mile = (1/dist_per_min).round(2)
  	return min_per_mile
  end
end

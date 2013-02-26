class FriendsController < ApplicationController

def index
	@friends = User.find(:all, :conditions => ["id != ?", session[:user_id]])
end

def exercises
	@friend = User.find_by_id(params["Friends"]) 
	@exercise = Exercise.new
    @exercises = Exercise.where(:user_id => (params["Friends"]))
    @categories = Category.where(:user_id => (params["Friends"]))
    @turn = Turn.new
end

end
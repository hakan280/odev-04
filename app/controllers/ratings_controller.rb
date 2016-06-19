class RatingsController < ApplicationController
  def like
  	movie_id = params[:movie_id].to_i
  	point = Rating.find_by(user_id: current_user.id, movie_id: movie_id)
  	
  	if point
  		point.update(point: 1)
  	else
  		Rating.create(user_id: current_user.id, movie_id: movie_id, point: 1)
  	end
    redirect_to :back
  end

  def dislike
  	movie_id = params[:movie_id].to_i
  	point = Rating.find_by(user_id: current_user.id, movie_id: movie_id)
  	
  	if point
  		point.update(point: -1)
  	else
  		Rating.create(user_id: current_user.id, movie_id: movie_id, point: -1)
  	end

    redirect_to :back
  end
end

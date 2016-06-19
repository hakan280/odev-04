class UsersController < ApplicationController
  def show
  	@users = User.all
  	user_id = params[:id]
  	@ratings = Rating.where(user_id: user_id)

  end
end

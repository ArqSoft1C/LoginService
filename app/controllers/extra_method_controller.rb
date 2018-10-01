class ExtraMethodController < ApplicationController
  def allUsers
	    users = User.all
	    render json: users
	end
  def findUserById
          user = User.find_by(id: params[:id])
          render json: user
  end
end

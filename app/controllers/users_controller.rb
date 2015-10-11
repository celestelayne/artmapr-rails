class UsersController < ApplicationController
	require 'uri'

	def index
		@users = User.all
		render :index
	end

	def new
		@user = User.new
		render :new
	end

	def show
		id = params[:id]
		@user = User.find(id)
		render :show
	end

	def create
		new_user = params.require(:user).permit(:first_name, :last_name, :email, :password)
		user = User.create(new_user)
		# redirect to profile page
		redirect_to '/users'
	end

	def edit
		id = params[:id]
		@user = User.find(id)
		render :edit
	end

	def update
		user_id = params[:id]
		user = User.find(user_id)

		# get updated data
		updated_attributes = params.require(:user).permit(:first_name, :last_name, :email, :password)
		# update the user
		user.update_attributes(updated_attributes)

		# redirect to show
		redirect_to '/users/#{user_id}'
	end

end

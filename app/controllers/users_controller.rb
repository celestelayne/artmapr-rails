class UsersController < ApplicationController

	def index
		@users = User.all
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
		@user = User.create(user_params)
			# redirect to profile page
		redirect_to '/users'
	end

	def edit
		id = params[:id]
		@user = User.find(id)
		render :edit
	end

	private

	def user_params
		params.require(:user).permit(:first_name, :last_name, :email, :password)
	end

end

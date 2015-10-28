class SessionsController < ApplicationController

  def new
    @user = User.new
    render :new
  end

  def create
    user_params = params.require(:user).permit(:email, :password)
    @user = User.confirm(user_params)
    if @user.save
      login(@user)
      redirect_to '/users/#{@user.id}'
    else
      redirect_to '/login'
    end
  end #end of create method

end #end of SessionsController

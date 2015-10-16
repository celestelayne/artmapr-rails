module SessionsHelper

  def login(user)
    session[:user_id] = user
    @current_user = user
  end
end

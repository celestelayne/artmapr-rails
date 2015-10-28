module SessionsHelper

  def login(user)
    session[:user_id] = user.id
    @current_user = user
  end

  def current_user
    return false if session[:user_id] == nil
    @current_user ||= User.find(session[:user_id])
  end

  def logout
    @current_user = session[:user_id] = nil
    redirect_to root_path
  end

  def logged_in?
    if current_user == nil
      redirect_to "/login"
    end
  end

  def require_login
    if !logged_in?
      redirect_to '/login'
    end
  end

  def redirect_unauthenticated
    unless logged_in?
      flash[:alert] = "Sorry, you must be logged in to see this content"
      return redirect_to login_path
    end
  end

end

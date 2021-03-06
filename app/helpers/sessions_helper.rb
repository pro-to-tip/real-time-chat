module SessionsHelper
  def login(user)
    session[:user_id] = user.id
  end

  def logout
    return if !logged_in
    session[:user_id] = nil
    @current_user = nil
  end

  def current_user
    @current_user ||= User.find(id: session[:user_id])
  end

  def logged_in
    !current_user.nil?
  end
end

class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
 

  def current_user
    if User.find_by_id(session[:user_id])
      @current_user ||= User.find_by_id(session[:user_id])
    else
      nil
    end
  end

  def logged_in?
    !!current_user
  end

 

end

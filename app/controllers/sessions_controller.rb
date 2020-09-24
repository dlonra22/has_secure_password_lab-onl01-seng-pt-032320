class SessionsController < ApplicationController
  def create
    user = User.find_by(name: params[:user][:name])
    if user
      if user.authenticate(params[:user][:password])
        session[:user_id] = user.id 
      else
        session[:user_id] = nil
      end
    else
      session[:user_id] = nil
    end
  end

end


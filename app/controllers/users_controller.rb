class UsersController < ApplicationController
    def new
    end
    def create 
        if params[:user][:password] == params[:user][:password_confirmation]
            user = User.create(user_params)
            session[:user_id] = user.id
        else 
            session[:user_id] = nil
            redirect_to users_new_path
        end 
    end 

    private
 
    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)
    end
end

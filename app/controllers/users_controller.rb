class UsersController < ApplicationController
    def index


        render :index
    end

    def sign_in 
        @user = User.find_by(first_name:params[:first_name])

        if @user
            session[:logged_in] = @user.id
            redirect_to "/wall"
        else
            @user = User.create(first_name:params[:first_name])
            if @user.valid?
                session[:logged_in] = @user.id 
                redirect_to "/wall"
            else 
                flash[:errors] = @user.errors.full_messages
                redirect_to "/"
            end
        end
    end 

    def logout
        session[:logged_in] = nil

        redirect_to '/'
    end
end

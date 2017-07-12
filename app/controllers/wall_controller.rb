class WallController < ApplicationController
    def index
        @user = User.find(session[:logged_in])
        @messages = Message.all
        @comments = Comment.all

        render :index
    end 

    def create_message
        user = User.find(session[:logged_in])
        message = Message.create(post:params[:post], user:user)

        if message.valid?
            redirect_to '/wall'
        else
            flash[:errors] = message.errors.full_messages
            redirect_to '/wall'
        end
    end

    def create_comment
        user = User.find(session[:logged_in])
        message = Message.find(params[:message_id])

        comment = Comment.create(content:params[:content], message: message, user:user)

        puts params[:content]

        if comment.valid?
            redirect_to '/wall'
        else
            flash[:errors] = comment.errors.full_messages
            redirect_to '/wall'
        end

    end
end

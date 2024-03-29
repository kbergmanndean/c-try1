class SessionsController < ApplicationController

    def create
        user=User.find_by(username:params[:username])
        if user && user.authenticate(params[:password])
            session[:user_id]=user.id   
            render json:user, include: :items
        else
            render json:{errors:["invalid username and/or password"]}
        end
    end

    def destroy
        session.delete :user_id
    end
end

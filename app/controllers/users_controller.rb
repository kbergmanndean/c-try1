class UsersController < ApplicationController
    skip_before_action :authorize, only: [:create, :show, :index]

    def index
        users=User.all
        render json: users, include: [:items]
    end
    
    def create
        user=User.create(user_params)
        session[:user_id]=user.id
        if user.valid?
            render json:user, status: :created, include: [:items]
        else
            render json: {error:user.errors.full_messages}
        end
    end

    def show
        usershow=User.find_by(id:params[:id])
        render json: usershow, include: [:items]
    end
        
    def destroy
        user_delete=User.find_by(id:params[:id])
        user_delete.destroy
        head:no_content
    end

    private

    def user_params
        params.require(:user).permit(:username,:password)
    end
end

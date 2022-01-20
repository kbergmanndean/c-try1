class UsersController < ApplicationController
    skip_before_action :authorize, only: [:create, :show, :index]

    def index
        users=User.all
        render json: users, include: [:items]
    end

    def show
        usershow=User.find_by(id:params[:id])
        render json: usershow, include: [:items]
    end

    private

    def user_params
        params.require(:user).permit(:username,:password)
    end
end

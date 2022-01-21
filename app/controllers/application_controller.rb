class ApplicationController < ActionController::Base
    include ActionController::Cookies

  def fallback_index
    render template: '/public/index.html'
  end


  private 

  def authorize
    @current_user = User.find_by(id:session[:user_id])
    render json: { errors: ["Not authorized"] }, status: :unauthorized
    unless @current_user
    end
  end

end

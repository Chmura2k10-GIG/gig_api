class HomeController < ApplicationController
  before_action :authenticate_user,  only: [:auth]

  def index
    render json: { service: 'GIG_API', status: 200 }
  end
  
  def auth
    render json: { status: 200, msg: "You are currently Logged-in as #{current_user.login}" }
  end
end

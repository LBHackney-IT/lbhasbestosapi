class ApplicationController < ActionController::API
  before_action :token_auth

  def token_auth
    if params[:token].blank? or params[:token] != ENV['SECRET_TOKEN']
      render status: 401
    end
  end
end

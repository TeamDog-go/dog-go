class ApplicationController < ActionController::Base
  include ActionController::MimeResponds
  include ActionController::HttpAuthentication::Token::ControllerMethods
  protect_from_forgery with: :exception
  # skip_before_action :verify_authenticity_token
  before_action :authenticate_user!
  helper_method :current_user

  # def bearer_token
  #   pattern = /^Bearer /
  #   header  = request.headers['Authorization']
  #   header.gsub(pattern, '') if header && header.match(pattern)
  # end

  # def current_user    
  #   @user ||= User.find_by(api_token: bearer_token)
  #   return @user
  # end
  
#   # restrict access to admin module for non-admin users
# def authenticate_admin_user!
#   raise SecurityError unless current_user.try(:admin?)
#   rescue_from SecurityError do |exception|
#     redirect_to root_url
#   end
# end
  
end

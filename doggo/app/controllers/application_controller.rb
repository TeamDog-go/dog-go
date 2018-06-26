class ApplicationController < ActionController::API
  include ActionController::MimeResponds
  include ActionController::HttpAuthentication::Token::ControllerMethods
  helper_method :current_user

  def bearer_token
    pattern = /^Bearer /
    header  = request.headers['Authorization']
    header.gsub(pattern, '') if header && header.match(pattern)
  end

  def current_user    
    @user ||= User.find_by(api_token: bearer_token)
    return @user
  end 
  
end

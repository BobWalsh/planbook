class LogoutController < ApplicationController
  include LogoutHelper
  def logout
    reset_session
    # redirect_to logout_url.to_s
    redirect_to "#{root_url}"
  end
end
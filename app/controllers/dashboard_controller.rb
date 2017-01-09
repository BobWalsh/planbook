class DashboardController < ApplicationController
  before_action :authenticate_user!
  include DashboardHelper
  def show
    @user = current_user
    @country = random_country
  end
end

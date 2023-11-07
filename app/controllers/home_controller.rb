class HomeController < ApplicationController
  def index
    @daily_logs = current_user.daily_logs
  end
end

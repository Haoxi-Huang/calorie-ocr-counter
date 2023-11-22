class DailyLogsController < ApplicationController
  before_action :set_daily_log, except: :index

  def index
    @daily_logs = current_user.daily_logs
  end

  def new
    @daily_log = DailyLog.new
  end

  private

  def set_daily_log
    @daily_log = DailyLog.find_by(params[:id])
  end
end

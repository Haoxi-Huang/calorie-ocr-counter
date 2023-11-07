class LogEntriesController < ApplicationController
  before_action :set_daily_log

  private

  def set_daily_log
    @daily_log = DailyLog.find_by(id: params[:daily_log_id])
  end
end

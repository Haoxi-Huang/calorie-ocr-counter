class DailyLogsController < ApplicationController
  before_action :set_daily_log, except: :index

  def index
    @daily_logs = current_user.daily_logs
  end

  def new
    @daily_log = DailyLog.new
  end

  def update
    if @daily_log.update(daily_log_params)
      redirect_to daily_log_path(@daily_log), status: :ok
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def create
    @daily_log = current_user.daily_logs.build(daily_log_params)

    if @daily_log.save
      redirect_to daily_log_path(@daily_log), status: :created
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def daily_log_params
    params.require(:daily_log).permit(:date)
  end

  def set_daily_log
    @daily_log = DailyLog.find_by(id: params[:id])
  end
end

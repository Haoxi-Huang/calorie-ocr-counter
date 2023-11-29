class LogEntriesController < ApplicationController
  before_action :set_daily_log
  before_action :set_log_entry, except: :index

  def index
    @log_entries = @daily_log.log_entries
  end

  def new
    @log_entry = @daily_log.log_entries.build()
  end

  def update
    if @log_entry.update(log_entry_params)
      redirect_to daily_log_log_entry_path(@daily_log, @log_entry), status: :ok
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def create
    @log_entry = @daily_log.log_entries.build(log_entry_params)

    if @log_entry.save
      redirect_to daily_log_log_entry_path(@daily_log, @log_entry), status: :created
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def log_entry_params
    params.require(:log_entry).permit(:food_name, :calorie_count, :serving_count, :photo)
  end

  def set_daily_log
    @daily_log = DailyLog.find_by(id: params[:daily_log_id])
  end

  def set_log_entry
    @log_entry = LogEntry.find_by(id: params[:id])
  end
end

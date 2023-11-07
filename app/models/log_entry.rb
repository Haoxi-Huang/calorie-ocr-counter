class LogEntry < ApplicationRecord
  belongs_to :daily_log

  has_one_attached :food_photo
end

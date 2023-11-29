class DailyLog < ApplicationRecord
  belongs_to :user
  has_many :log_entries

  validates :date, presence: true

end

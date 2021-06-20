class SleepRecord < ApplicationRecord
  validates_presence_of :sleep_time, :wake_time
  belongs_to :user
  scope :past_week, ->() { where("created_at >= :start_date AND created_at <= :end_date", {:start_date => (Date.today - 1.week).beginning_of_week.beginning_of_day, :end_date => (Date.today - 1.week).end_of_week.end_of_day}) }
end

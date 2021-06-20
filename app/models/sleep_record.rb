class SleepRecord < ApplicationRecord
  validates_presence_of :sleep_time, :wake_time
  belongs_to :user
end

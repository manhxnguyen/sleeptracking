class Clock < ApplicationRecord
  belongs_to :user

  def clock_in
    if check_in.nil?
      update!(check_in: DateTime.now)
      str = 'Started sleep at: ' + check_in.to_s
    else
      check_out = DateTime.now
      user.sleep_records.create!(sleep_time: check_in, wake_time: check_out, sleep_duration: check_out.to_i - check_in.to_i)
      update!(check_in: nil)
      str = 'Woke up at: ' + check_out.to_s
    end
    { clock_in: str }
  end
end

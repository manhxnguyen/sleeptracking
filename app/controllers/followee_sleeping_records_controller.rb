class FolloweeSleepingRecordsController < ApplicationController

  def index
    @sleep_records = SleepRecord.where(user: user.followees).past_week.order(sleep_duration: :desc)
    json_response(@sleep_records)
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def user
    @user ||= User.find(params[:id])
  end
end
